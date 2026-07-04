// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {ISwapper} from "src/interfaces/ISwapper.sol";
import {IQuoterV2} from "src/interfaces/IQuoterV2.sol";
import {IUniswapV3PoolImmutables} from "src/interfaces/IUniswapV3PoolImmutables.sol";

contract SpotQuoter is UUPSUpgradeable, OwnableUpgradeable {
    IQuoterV2 public immutable quoterV2;

    constructor(address _quoterV2) {
        quoterV2 = IQuoterV2(_quoterV2);
    }

    function initialize(address owner_) external initializer {
        __Ownable_init(owner_);
    }

    function _authorizeUpgrade(address /*newImplementation*/ ) internal virtual override onlyOwner {}

    function quote(address swapper, uint256 amountIn, bool assetToProduct) public returns (uint256) {
        address[] memory swapPath;
        if (assetToProduct) {
            swapPath = ISwapper(swapper).assetToProductSwapPath();
        } else {
            swapPath = ISwapper(swapper).productToAssetSwapPath();
        }
        (uint256 amountOut,,,) = quoterV2.quoteExactInput(encodePath(swapPath), amountIn);
        return amountOut;
    }

    function encodePath(address[] memory swapPath) public view returns (bytes memory) {
        uint256 length = swapPath.length;
        if (length % 2 == 0 && length < 3) {
            revert();
        }
        bytes memory encodedPath = abi.encodePacked(swapPath[0]);
        for (uint256 i = 1; i < length;) {
            address tokenB = swapPath[i + 1];
            address pool = swapPath[i];
            uint24 feeTier = IUniswapV3PoolImmutables(pool).fee();
            encodedPath = bytes.concat(encodedPath, abi.encodePacked(feeTier, tokenB));
            unchecked {
                i += 2;
            }
        }
        return encodedPath;
    }
}
