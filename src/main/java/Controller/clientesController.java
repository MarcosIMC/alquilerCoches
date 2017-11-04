package Controller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import Hibernate.HibernateUtil;
import tablas.Usuario;


public class clientesController {
	
	String pass = "1234";
	String role = "user";
	EntityManagerFactory emfactory;
	EntityManager entityManager;
	Usuario usuario;

	public void insertCliente(String dni, String nombre, String apellidos, int edad, String email) {
	
		emfactory = Persistence.createEntityManagerFactory("alquilerCoches");
		
		entityManager = emfactory.createEntityManager();
				entityManager.getTransaction().begin();
		
		usuario = new Usuario(dni, nombre, apellidos, edad, email, pass, role);
		
		entityManager.persist(usuario);
		entityManager.getTransaction().commit();
		
		entityManager.close();
		emfactory.close();
		
	}
	
	public void deleteClient(String dni) {
		emfactory = Persistence.createEntityManagerFactory("alquilerCoches");
		
		entityManager = emfactory.createEntityManager();
				entityManager.getTransaction().begin();
				
		usuario = entityManager.find(Usuario.class, dni);
		
		entityManager.getTransaction().begin();
		
		entityManager.remove(usuario);
		
		entityManager.getTransaction().commit();
		
		entityManager.close();
		emfactory.close();
	}
	
}
