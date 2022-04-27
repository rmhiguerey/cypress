describe('Spiando una API', () => {
  
    it('Add new todo by UI', function(){
        cy.visit(`http://localhost:${process.env.PORT}/todo`)
        
        cy.get('.todo-list li').should('have.length', 2)
    })
});