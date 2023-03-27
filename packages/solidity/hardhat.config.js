require("@nomicfoundation/hardhat-toolbox");
require('@primitivefi/hardhat-dodoc');
require("hardhat-gas-reporter");
require('hardhat-abi-exporter');

const chainIds = {
  hardhat: 31337,
  ganache: 1337,
  mainnet: 1,
  ropsten: 3,
  rinkeby: 4,
  goerli: 5,
  kovan: 42,
  avax: 43114,
  avax_testnet: 43113,
  fantom: 250,
  fantom_testnet: 4002,
  polygon: 137,
  mumbai: 80001,
  optimism: 10,
  optimism_kovan: 69,
  optimism_goerli: 420,
  arbitrum: 42161,
  arbitrum_rinkeby: 421611,
  arbitrum_goerli: 421613,
  binance: 56,
  binance_testnet: 97,
};

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  gasReporter: {
    enabled: (process.env.REPORT_GAS) ? true : false
  },
  abiExporter: [
    {
      path: './abi/json',
      format: "json",
    },
    // {
    //   path: './abi/minimal',
    //   format: "minimal",
    // },
    // {
    //   path: './abi/fullName',
    //   format: "fullName",
    // },
  ]  
};
