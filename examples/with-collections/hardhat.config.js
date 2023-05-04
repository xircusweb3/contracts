require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    compilers: [
      { version: '0.8.17', settings: { optimizer: { enabled: true, runs: 300 } } },
      { version: '0.8.11', settings: { optimizer: { enabled: true, runs: 300 } } },
      { version: '0.5.16', settings: { optimizer: { enabled: true, runs: 300 } } },
      { version: '0.6.6', settings: { optimizer: { enabled: true, runs: 300 } } },            
    ]
  },
};
