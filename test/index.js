'use strict'
const chai = require('chai')
const expect = chai.expect
describe("Vim practice", () => {

	it("Delete the contents of a string", () => {

		let sentence = ""
		expect(sentence).to.equal("")

	})

	it("The text will be copyed in to the variable", () => {

		let sentence = "I like vim"
		expect(sentence).to.equal("I like vim")

	})

	it("The text will be replaced", () => {

		let sentence = "I like vim"
		expect(sentence).to.equal("I like vim")

	})

	it("Delete a single world in a sentence", () => {

		let sentence = "I like vim"
		expect(sentence).to.equal("I like vim")

	})

	it("Delete some it.skipems in an array", () => {

		let array = [
			"James",
			"Laura",
			"Paul",
			"Jane",
			"Sam",
			"Fred"
		]
		expect(array).to.eql(["James", "Fred"])

	})

	it("Clear the contents of a block", () => {

		let sentence = "The function will be empty: function() {}"
		expect(sentence).to.equal("The function will be empty: function() {}")

	})

	it.skip("A reason to use record mode", () => {

		let array = [
			"James",
			"Laura",
			"Paul",
			"Jane",
			"Sam",
			"Fred",
		]	

		expect(array).to.eql([
			{ "name" : "James" },
			{ "name" : "Laura" },
			{ "name" : "Paul" },
			{ "name" : "Jane" },
			{ "name" : "Sam" },
			{ "name" : "Fred" }
		])

	})

})
