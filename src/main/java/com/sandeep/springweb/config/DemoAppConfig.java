package com.sandeep.springweb.config;

import java.beans.PropertyVetoException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
//import org.hibernate.cfg.Environment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.sandeep.springweb.entity.Student;

@Configuration
@EnableAspectJAutoProxy
@EnableWebMvc
@ComponentScan(value= "com.sandeep.springweb")
@PropertySource("classpath:persistence-mysql.properties")
public class DemoAppConfig  implements WebMvcConfigurer  {

	@Autowired
	private Environment env;
	
	private Logger logger = Logger.getLogger(getClass().getName());
		
	@Bean
	public ViewResolver viewResolver() {
		
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		
		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		
		return viewResolver;
	}
		
	
	@Override
	 public void addResourceHandlers(ResourceHandlerRegistry registry) {
		 registry.addResourceHandler("/resources/**")
		 .addResourceLocations("/resources/")
		 .setCacheControl(CacheControl.maxAge(1, TimeUnit.HOURS).cachePublic());
	 }	
	
	@Bean
	public DataSource securityDataSource() {
		ComboPooledDataSource securityDataSource = new ComboPooledDataSource();

		try {
			securityDataSource.setDriverClass(env.getProperty("jdbc.driver"));
		} catch (PropertyVetoException exc) {
			throw new RuntimeException(exc);
		}
			
		securityDataSource.setJdbcUrl(env.getProperty("jdbc.url"));
		securityDataSource.setUser(env.getProperty("jdbc.user"));
		securityDataSource.setPassword(env.getProperty("jdbc.password"));
		
		securityDataSource.setInitialPoolSize(getIntProperty("connection.pool.initialPoolSize"));
		securityDataSource.setMinPoolSize(getIntProperty("connection.pool.minPoolSize"));
		securityDataSource.setMaxPoolSize(getIntProperty("connection.pool.maxPoolSize"));
		securityDataSource.setMaxIdleTime(getIntProperty("connection.pool.maxIdleTime"));
		
		return securityDataSource;
	}
	
	

	@Bean
	public SessionFactory sessionFactory() {
		SessionFactory sessionFactory=null;
		StandardServiceRegistry standardServiceRegistry;

		try {
			// Creating StandardServiceRegistryBuilder 
			StandardServiceRegistryBuilder registryBuilder = new StandardServiceRegistryBuilder();
			
			Map<String, Object> dbSettings = new HashMap<>();
			dbSettings.put("hibernate.connection.url", "jdbc:mysql://ols-admin.czajs616aco3.us-east-2.rds.amazonaws.com:3306/olsAdmin");
			dbSettings.put("hibernate.connection.username", "root");
			dbSettings.put("hibernate.connection.password", "Jan2017!");
			dbSettings.put("hibernate.connection.driver_class", "com.mysql.jdbc.Driver");
			dbSettings.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
			dbSettings.put("hibernate.current_session_context_class","thread");
			dbSettings.put("hibernate.show_sql", true);
			  /*dbSettings.put(Environment.HBM2DDL_AUTO, "create");
			    dbSettings.put(Environment.SHOW_SQL, true);
			    dbSettings.put(Environment.ENABLE_LAZY_LOAD_NO_TRANS, true);*/
			registryBuilder.applySettings(dbSettings);
			standardServiceRegistry = registryBuilder.build();			
			MetadataSources sources = new MetadataSources(standardServiceRegistry).addAnnotatedClass(Student.class);
			Metadata metadata = sources.getMetadataBuilder().build();
			sessionFactory = metadata.getSessionFactoryBuilder().build();
		} catch (Throwable ex) {
			logger.info("Errro in session factory==>>>"+getStackTrace(ex));
			throw new ExceptionInInitializerError(ex);
		}
		return  sessionFactory;
	}
	
	public static String getStackTrace(Throwable t) {
	    StringWriter sw = new StringWriter();
	    t.printStackTrace(new PrintWriter(sw));
	    return sw.toString();
	}
	
	private int getIntProperty(String propName) {		
		String propVal = env.getProperty(propName);		
		int intPropVal = Integer.parseInt(propVal);		
		return intPropVal;
	}
}
















