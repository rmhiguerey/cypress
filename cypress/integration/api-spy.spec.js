describe('Spiando una API', () => {
  
    it('Add new todo by UI', function(){
        cy.visit('http://localhost:8080/todo')
        
        cy.get('.todo-list li').should('have.length', 2)
    })
});