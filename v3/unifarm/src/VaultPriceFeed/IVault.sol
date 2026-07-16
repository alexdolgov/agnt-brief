pragma solidity 0.6.8;

interface IVault {
    function underlyingBalanceInVault() external view returns (uint256);

    function underlyingBalanceWithInvestment() external view returns (uint256);

    // function store() external view returns (address);
    function governance() external view returns (address);

    function controller() external view returns (address);

    function underlying() external view returns (address);

    function strategy() external view returns (address);

    function setRewardsDistributor(address _rewardsDistributor) external;

    function setStrategy(address _strategy) external;

    function setVaultFractionToInvest(uint256 numerator, uint256 denominator)
        external;

    function deposit(uint256 amountWei) external;

    function depositFor(uint256 amountWei, address holder) external;

    function setDepositFee(uint256 dNumerator, uint256 dDenominator) external;

    function withdrawAll() external;

    function withdraw(uint256 numberOfShares) external;

    function getPricePerFullShare() external view returns (uint256);

    function underlyingBalanceWithInvestmentForHolder(address holder)
        external
        view
        returns (uint256);

    function accumalateFees(address feeRewardForwarder) external;

    // startSaving should be callable only by the controller (by the savers) or by governance
    function startSaving() external;
}
