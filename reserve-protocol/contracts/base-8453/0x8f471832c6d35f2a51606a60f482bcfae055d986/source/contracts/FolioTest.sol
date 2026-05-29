// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "forge-std/console.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { GPv2OrderLib, COWSWAP_GPV2_SETTLEMENT } from "contracts/utils/GPv2OrderLib.sol";

import { IFolio } from "contracts/interfaces/IFolio.sol";

contract FolioTestContract {
    using GPv2OrderLib for GPv2OrderLib.Data;

    address SELL = 0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913;
    address BUY = 0xfde4C96c8593536E31F229EA8f37b2ADa2699bb2;
    address RESERVE_ENG = 0x8D2aa07F1a245d72B009c344690edD8e22a9E993;

    uint256 constant SELL_AMOUNT = 100_000_000; // $100
    uint256 constant BUY_AMOUNT = 95_000_000; // $95

    constructor() {
        IERC20(SELL).approve(address(COWSWAP_GPV2_SETTLEMENT), type(uint256).max);
    }

    /// @dev Validates a cowswap order for a partial fill via EIP-1271
    function isValidSignature(bytes32 _hash, bytes calldata signature) external view returns (bytes4) {
        // decode the signature to get the CowSwap order
        GPv2OrderLib.Data memory order = abi.decode(signature, (GPv2OrderLib.Data));

        // verify order details
        require(_hash == order.hash(COWSWAP_GPV2_SETTLEMENT.domainSeparator()), IFolio.Folio__EIP712InvalidSignature());
        require(
            order.sellToken == SELL &&
                order.buyToken == BUY &&
                order.sellAmount >= SELL_AMOUNT &&
                order.buyAmount >= BUY_AMOUNT &&
                order.feeAmount == 0 &&
                order.partiallyFillable &&
                block.timestamp <= order.validTo,
            IFolio.Folio__CowSwapInvalidOrder()
        );

        // If all checks pass, return the magic value
        // bytes4(keccak256("isValidSignature(bytes32,bytes)")
        return 0x1626ba7e;
    }

    function withdraw(address token) public {
        IERC20(token).transfer(RESERVE_ENG, IERC20(token).balanceOf(address(this)));
    }

    function withdrawAll() external {
        if (IERC20(SELL).balanceOf(address(this)) > 0) {
            IERC20(SELL).transfer(RESERVE_ENG, IERC20(SELL).balanceOf(address(this)));
        }
        if (IERC20(BUY).balanceOf(address(this)) > 0) {
            IERC20(BUY).transfer(RESERVE_ENG, IERC20(BUY).balanceOf(address(this)));
        }
    }
}
