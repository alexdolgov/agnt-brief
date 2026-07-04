// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../contracts/StreamerFactory.sol";
import "../contracts/interfaces/IStreamerFactory.sol";
import "../contracts/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/Create2.sol";
import "../contracts/Streamer.sol";
import "@openzeppelin/contracts/utils/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../contracts/interfaces/IStreamer.sol";
import "@openzeppelin/contracts/interfaces/IERC1363.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC165.sol";
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";

contract $StreamerFactory is StreamerFactory {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor() payable {
    }

    receive() external payable {}
}
