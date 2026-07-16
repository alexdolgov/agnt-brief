// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IERC314.sol";
import "./IBIFKN314Wrapper.sol";
import "../BIFKN314Wrapper.sol";

interface IBIFKN314WrapperFactory {
    function createWrapper(
        IERC20 originalToken,
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply,
        address owner_,
        uint256 tradingFee,
        uint256 maxWalletPercent,
        string memory metadataURI
    ) external returns (address wrapper, address wrappedToken);

    function erc20ToWrapper(
        IERC20 token
    ) external view returns (IBIFKN314Wrapper wrapper);

    function bifkn314ToWrapper(
        IERC20 token
    ) external view returns (IBIFKN314Wrapper wrapper);

    function allWrappersLength() external view returns (uint256);

    function allWrappers(
        uint256 index
    ) external view returns (BIFKN314Wrapper wrapper);
}
