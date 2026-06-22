// SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

interface IRewardRouter {

    function klp() external view returns (address);
    function feeKlpTracker() external view returns (address);
    function stakedKlpTracker() external view returns (address);
    function klpManager() external view returns (address);
    function klpVester() external view returns (address);
    function weth() external view returns (address);
    function esKtx() external view returns(address);
    function claim() external;
    function claimFees() external;
    function signalTransfer(address _destination) external;

    function handleRewards(
        bool _shouldClaimKmx,
        bool _shouldStakeKmx,
        bool _shouldClaimEsKmx,
        bool _shouldStakeEsKmx,
        bool _shouldStakeMultiplierPoints,
        bool _shouldClaimWeth,
        bool _shouldConvertWethToEth
    ) external;

    function compound() external;
    function mintAndStakeKlp(address _token, uint256 _amount, uint256 _minUsdg, uint256 _minKlp) external returns (uint256);

    function unstakeAndRedeemKlp(address _tokenOut, uint256 _klpAmount, uint256 _minOut, address _receiver) external returns (uint256);
}