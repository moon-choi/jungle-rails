describe('product details', () => {
  beforeEach(() => {
    cy.visit('localhost:3000')
  })

  it('loads the product details page', () => {
    cy.get('[alt="Scented Blade"]').click()
    cy.url().should('include', '/products/2')
    cy.get('article div p').contains('The Scented Blade is an extremely rare')
  })
})

