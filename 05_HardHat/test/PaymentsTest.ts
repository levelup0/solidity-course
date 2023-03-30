import { expect } from "chai";
import { ethers } from "hardhat";

describe("Payments", function() {
    let acc1
    let acc2
    let payments

    beforeEach(async function() {
        [acc1, acc2] = await ethers.getSigners()
        const Payments = await ethers.getContractFactory("Payments", acc1)
        payments = await Payments.deploy()
        await payments.deployed()
    })

    it("should have proper address", async function() {
        expect(payments.address).to.be.properAddress
    })

    it("should have 0 ether by default", async function() {
        expect(await payments.currentBalance()).to.eq(0)
    })

    it("should be possible to send funds", async function() {
        const weiToSend = 100;
        const tx = await payments.connect(acc2).pay("hello from hardhat", { value: weiToSend })
        const newPayment = await payments.getPayment(acc2.address, 0)

        await tx.wait()

        expect(newPayment.amount).to.eq(weiToSend)
        await expect(() => tx).to.changeEtherBalances([acc2, payments.address], [-weiToSend, weiToSend])
        expect(await payments.currentBalance()).to.eq(weiToSend)
    })
})