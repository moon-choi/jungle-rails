describe('visit homepage', () => {
  beforeEach(() => {
    cy.visit('localhost:3000')
  })

  it('visit the home page and have nothing in cart', () => {
    cy.get('nav a[href="/cart"]').contains('0')
  })

  it("add item to cart and my cart number goes up ", () => {
    cy.get('nav a[href="/cart"]').contains('0')
    cy.contains('Add').click({ force: true })
    cy.get('nav a[href="/cart"]').contains('1')
  });

})


