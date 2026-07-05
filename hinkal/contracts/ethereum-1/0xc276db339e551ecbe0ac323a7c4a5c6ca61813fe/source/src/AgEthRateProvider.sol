// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IRateProvider {
    function getRate() external view returns (uint256);
}

interface ILRTOracle {
    function rsETHPrice() external view returns (uint256);
}

interface IERC4626 {
    function convertToAssets(
        uint256 shares
    ) external view returns (uint256 assets);
}

/**
 * @title agETH Rate Provider
 * @notice Returns the value of agETH in terms of ETH
 */
contract AgEthRateProvider is IRateProvider {
    IERC4626 public immutable agEthLendingPool;
    ILRTOracle public immutable rsETHOracle;

    constructor(IERC4626 _agEthLendingPool, ILRTOracle _rsETHOracle) {
        agEthLendingPool = _agEthLendingPool;
        rsETHOracle = _rsETHOracle;
    }

    /**
     * @return the value of agETH in terms of ETH
     */
    function getRate() external view override returns (uint256) {
        uint256 agEThToRsEth = agEthLendingPool.convertToAssets(1 ether);
        uint256 rsEthToEth = rsETHOracle.rsETHPrice();
        uint256 agEthToEth = (agEThToRsEth * rsEthToEth) / 1 ether;
        return agEthToEth;
    }
}
