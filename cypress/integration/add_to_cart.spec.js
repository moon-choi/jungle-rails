describe('visit homepage', () => {
  beforeEach(() => {
    cy.visit('localhost:3000')
  })

  it('visit the home page and click Add to Cart buttons for one of the products', () => {
    cy.get("h2").should("contain", "Where you can find any plants!"); // Works!
  })

  it("Your test should confirm that the count of the cart button changes when adding products to it", () => {
    cy.get(".products article").should("be.visible");
  });

})


