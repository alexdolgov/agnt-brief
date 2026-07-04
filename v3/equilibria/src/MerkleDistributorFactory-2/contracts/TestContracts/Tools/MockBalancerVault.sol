// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../../Interfaces/Balancer/IBalancerVault.sol";

import "@shared/lib-contracts-v0.8/contracts/TestContracts/ERC20Mock.sol";

interface IWETH is IERC20 {
    function deposit() external payable;

    function withdraw(uint256 amount) external;
}

contract MockBalancerVault is IBalancerVault {
    using SafeERC20 for IERC20;
    // Sentinel value used to indicate WETH with wrapping/unwrapping semantics. The zero address is a good choice for
    // multiple reasons: it is cheap to pass as a calldata argument, it is a known invalid token and non-contract, and
    // it is an address Pools cannot register as a token.
    address private constant _ETH = address(0);

    IWETH private _weth;

    function swap(
        SingleSwap memory singleSwap,
        FundManagement memory funds,
        uint256,
        uint256
    ) external payable override returns (uint256 amountCalculated) {
        IERC20(address(singleSwap.assetIn)).safeTransferFrom(
            funds.sender,
            address(this),
            singleSwap.amount
        );
        amountCalculated = singleSwap.amount * 100;
        if (
            IERC20(address(singleSwap.assetOut)).balanceOf(address(this)) >=
            amountCalculated
        ) {
            IERC20(address(singleSwap.assetOut)).safeTransfer(
                funds.recipient,
                amountCalculated
            );
        } else {
            ERC20Mock(address(singleSwap.assetOut)).mint(
                funds.recipient,
                amountCalculated
            );
        }

        return amountCalculated;
    }

    function batchSwap(
        SwapKind kind,
        BatchSwapStep[] memory swaps,
        IAsset[] memory assets,
        FundManagement memory funds,
        int256[] memory limits,
        uint256 deadline
    ) external payable override returns (int256[] memory assetDeltas) {}

    function _translateToIERC20(
        IAsset[] memory assets
    ) internal view returns (IERC20[] memory) {
        IERC20[] memory tokens = new IERC20[](assets.length);
        for (uint256 i = 0; i < assets.length; ++i) {
            tokens[i] = _translateToIERC20(assets[i]);
        }
        return tokens;
    }

    function _translateToIERC20(IAsset asset) internal view returns (IERC20) {
        return _isETH(asset) ? _WETH() : _asIERC20(asset);
    }

    function _isETH(IAsset asset) internal pure returns (bool) {
        return address(asset) == _ETH;
    }

    function _WETH() internal view returns (IWETH) {
        return _weth;
    }

    function _asIERC20(IAsset asset) internal pure returns (IERC20) {
        return IERC20(address(asset));
    }
}
