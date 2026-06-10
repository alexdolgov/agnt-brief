// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { ITransferStrategy } from "./interfaces/ITransferStrategy.sol";
import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract TransferStrategy is ITransferStrategy {
    using SafeERC20 for IERC20;

    function execute(bytes calldata _data) public payable returns (uint256) {
        (uint256 amount, address token, address receiver) = decodeData(_data);
        IERC20(token).safeTransferFrom(msg.sender, receiver, amount);
        emit Execute(_data);
        return amount;
    }

    function encodeData(uint256 amount, address token, address receiver) public pure returns (bytes memory) {
        return abi.encode(amount, token, receiver);
    }

    function decodeData(bytes calldata _data) public pure returns (uint256, address, address) {
        return abi.decode(_data, (uint256, address, address));
    }
}
