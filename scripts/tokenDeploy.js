const { ethers } = require("hardhat");

async function main() {
    const Token = await ethers.getContractFactory("Token");
    const token = await Token.deploy();
    await token.deployed();
  
    const TokenFactory = await ethers.getContractFactory("TokenFactory");
    const tokenfactory = await TokenFactory.deploy();
    await tokenfactory.deployed();
  
    console.log(token.address, "Token base contract address");
    console.log(tokenfactory.address, "TokenFactory contract address");
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });