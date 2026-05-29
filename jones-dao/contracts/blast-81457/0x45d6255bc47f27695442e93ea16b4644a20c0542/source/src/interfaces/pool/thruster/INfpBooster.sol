// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;
pragma abicoder v2;

interface INonfungiblePositionManagerStruct {
    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }

    struct MintParams {
        address token0;
        address token1;
        uint24 fee;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
    }
}

/// @title Non-fungible token for positions booster
interface INfpBooster is INonfungiblePositionManagerStruct {
    function staker() external returns (INfpOps);

    function booster() external returns (IBooster);

    function deposit(uint256 _tokenId) external;

    function withdraw(uint256 _tokenId, address _to) external;

    function collect(CollectParams memory params) external returns (uint256, uint256);
}

interface INfpOps is INonfungiblePositionManagerStruct {
    function withdrawPosition(uint256 _tokenId, address _to) external;

    function collect(CollectParams memory params) external returns (uint256, uint256);
}

interface IBooster {
    struct FeeDistro {
        address distro;
        address rewards;
        bool active;
    }

    function feeTokens(address _token) external returns (FeeDistro memory);

    function earmarkFees(address _feeToken) external returns (bool);

    struct PoolInfo {
        address lptoken;
        address token;
        address gauge;
        address crvRewards;
        address stash;
        bool shutdown;
    }

    function earmarkRewards(uint256 _pid) external returns (bool);

    function poolLength() external view returns (uint256);

    function lockRewards() external view returns (address);

    function poolInfo(uint256 _pid) external view returns (PoolInfo memory);

    function lockIncentive() external view returns (uint256);

    function stakerIncentive() external view returns (uint256);

    function staker() external view returns (address);

    function earmarkIncentive() external view returns (uint256);

    function platformFee() external view returns (uint256);

    function FEE_DENOMINATOR() external view returns (uint256);

    function voteGaugeWeight(address[] calldata _gauge, uint256[] calldata _weight) external returns (bool);

    function crv() external view returns (address);

    function cvxCrv() external view returns (address);

    function boosterFeeDistro() external view returns (address);

    function boosterFeeHandler() external view returns (address);

    function nfpBooster() external view returns (address);

    function calculateIncentives(uint256 rewardAmount)
        external
        view
        returns (
            uint256 _lockIncentive,
            uint256 _stakerIncentive,
            uint256 _callIncentive,
            uint256 _rewardIncentive,
            uint256 _totalIncentive
        );
}
