// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.17;

library Constants {
    ////////////////////////////////////////////////////////////////
    /// --- COMMON CONSTANTS
    ///////////////////////////////////////////////////////////////

    /// @notice ETH address.
    address internal constant _ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /// @notice WETH address.
    address public constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    /// @notice ZeroExRouter contract address.
    address public constant ZERO_EX_ROUTER = 0xDef1C0ded9bec7F1a1670819833240f027b25EfF;

    /// @notice Address of Balancer contract.
    address public constant BALANCER_VAULT = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;

    /// @notice BAL token address.
    address public constant BAL = 0xba100000625a3754423978a60c9317c58a424e3D;

    /// @notice Pool BAL/ETH token address.
    address public constant B_80BAL_20WETH = 0x5c6Ee304399DBdB9C8Ef030aB642B10820DB8F56;

    /// @notice Pool ID BAL/ETH token address.
    bytes32 public constant B_80BAL_20WETH_POOL_ID = 0x5c6ee304399dbdb9c8ef030ab642b10820db8f56000200000000000000000014;

    /// @notice Pool ID SD_BALH token address.
    bytes32 public constant SD_BAL_80BAL_20WETH_POOL_ID =
        0x2d011adf89f0576c9b722c28269fcb5d50c2d17900020000000000000000024d;

    ////////////////////////////////////////////////////////////////
    /// --- MARKET CONSTANTS
    ///////////////////////////////////////////////////////////////

    /// @notice SD BAL token address.
    address public constant SD_BAL = 0xF24d8651578a55b0C119B9910759a351A3458895;
}
