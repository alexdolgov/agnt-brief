// SPDX-License-Identifier: SAL-1.0
pragma solidity 0.8.18;

interface IDispatcher {
    struct UserInfo {
        uint256 shares;
        uint256 feeDebt0;
        uint256 feeDebt1;
        uint256 protocolFeeDebt0;
        uint256 protocolFeeDebt1;
        uint256 lossCompensationDeb;
    }

    struct FeesInfo {
        uint256 burnedAmount;
        uint256 wagmiAmount;
        uint256 withdrawnFee0;
        uint256 withdrawnFee1;
        uint256 protocolFee0;
        uint256 protocolFee1;
    }

    struct PoolInfo {
        address multipool;
        address multipoolToken;
        address token0;
        address token1;
        uint256 lossCompensationAccPerShare;
    }

    function wagmiLossCompensation(
        uint256[] calldata pids,
        uint256[] calldata wagmiAmounts
    ) external;

    function poolInfo(uint256 pid) external view returns (PoolInfo memory);

    function userInfo(uint256 pid, address user) external view returns (UserInfo memory);

    function add(address _multipool, address _token0, address _token1) external;

    function setWagmiTokenAddress(address _wagmiToken) external;

    function wagmiToken() external view returns (address);

    function estimateClaim(
        uint256 pid,
        address userAddress
    ) external view returns (FeesInfo memory fees);

    function deposit(
        uint256 pid,
        uint256 amount,
        address recipient,
        uint256 deviationBP
    ) external returns (FeesInfo memory fees);

    function withdraw(
        uint256 pid,
        uint256 amount,
        uint256 deviationBP
    ) external returns (uint256 sharesRemoved, FeesInfo memory fees);
}
