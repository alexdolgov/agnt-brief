// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "./IPen.sol";
import "./IVlPen.sol";
import "./IPenPoolFactory.sol";
import "./IPenDyst.sol";
import "./IDyst.sol";
import "./IDystopiaLens.sol";
import "./IUserProxy.sol";
import "./IVe.sol";
import "./IVotingSnapshot.sol";
import "./IVoterProxy.sol";
import "./IPenV1Rewards.sol";
import "./ITokensAllowlist.sol";

interface IPenLens {
    struct ProtocolAddresses {
        address penPoolFactoryAddress;
        address DystopiaLensAddress;
        address PenAddress;
        address vlPenAddress;
        address penDystAddress;
        address voterProxyAddress;
        address dystAddress;
        address voterAddress;
        address poolsFactoryAddress;
        address gaugesFactoryAddress;
        address minterAddress;
        address veAddress;
        address userProxyInterfaceAddress;
        address votingSnapshotAddress;
    }

    struct UserPosition {
        address userProxyAddress;
        uint256 veTotalBalanceOf;
        IDystopiaLens.PositionVe[] vePositions;
        IDystopiaLens.PositionPool[] poolsPositions;
        IUserProxy.PositionStakingPool[] stakingPools;
        uint256 penDystBalanceOf;
        uint256 penBalanceOf;
        uint256 dystBalanceOf;
        uint256 vlPenBalanceOf;
    }

    struct TokenMetadata {
        address id;
        string name;
        string symbol;
        uint8 decimals;
        uint256 priceUsdc;
    }

    struct PenPoolData {
        address id;
        address stakingAddress;
        uint256 stakedTotalSupply;
        uint256 totalSupply;
        IDystopiaLens.Pool poolData;
    }

    struct Pool {
        address id;
        string symbol;
        bool stable;
        address token0Address;
        address token1Address;
        address gaugeAddress;
        address bribeAddress;
        address[] bribeTokensAddresses;
        address fees;
    }

    struct RewardTokenData {
        address id;
        uint256 rewardRate;
        uint256 periodFinish;
    }

    /* ========== PUBLIC VARS ========== */

    function penPoolFactoryAddress() external view returns (address);

    function rewardsDistributorAddress() external view returns (address);

    function userProxyFactoryAddress() external view returns (address);

    function dystopiaLensAddress() external view returns (address);

    function penAddress() external view returns (address);

    function vlPenAddress() external view returns (address);

    function penDystAddress() external view returns (address);

    function voterProxyAddress() external view returns (address);

    function veAddress() external view returns (address);

    function dystAddress() external view returns (address);

    function penDystRewardsPoolAddress() external view returns (address);

    function partnersRewardsPoolAddress() external view returns (address);

    function treasuryAddress() external view returns (address);

    function cvlPenAddress() external view returns (address);

    function penV1RewardsAddress() external view returns (address);

    function penV1RedeemAddress() external view returns (address);

    function penV1Address() external view returns (address);

    function tokensAllowlistAddress() external view returns (address);

    /* ========== PUBLIC VIEW FUNCTIONS ========== */

    function voterAddress() external view returns (address);

    function poolsFactoryAddress() external view returns (address);

    function gaugesFactoryAddress() external view returns (address);

    function minterAddress() external view returns (address);

    function protocolAddresses()
        external
        view
        returns (ProtocolAddresses memory);

    function positionsOf(address accountAddress)
        external
        view
        returns (UserPosition memory);

    function rewardTokensPositionsOf(address, address)
        external
        view
        returns (IUserProxy.RewardToken[] memory);

    function veTotalBalanceOf(IDystopiaLens.PositionVe[] memory positions)
        external
        pure
        returns (uint256);

    function penPoolsLength() external view returns (uint256);

    function userProxiesLength() external view returns (uint256);

    function userProxyByAccount(address accountAddress)
        external
        view
        returns (address);

    function userProxyByIndex(uint256 index) external view returns (address);

    function gaugeByDystPool(address) external view returns (address);

    function dystPoolByPenPool(address penPoolAddress)
        external
        view
        returns (address);

    function penPoolByDystPool(address dystPoolAddress)
        external
        view
        returns (address);

    function stakingRewardsByDystPool(address dystPoolAddress)
        external
        view
        returns (address);

    function stakingRewardsByPenPool(address dystPoolAddress)
        external
        view
        returns (address);

    function isPenPool(address penPoolAddress) external view returns (bool);

    function penPoolsAddresses() external view returns (address[] memory);

    function penPoolData(address penPoolAddress)
        external
        view
        returns (PenPoolData memory);

    function penPoolsData(address[] memory _penPoolsAddresses)
        external
        view
        returns (PenPoolData[] memory);

    function penPoolsData() external view returns (PenPoolData[] memory);

    function penDyst() external view returns (IPenDyst);

    function pen() external view returns (IPen);

    function vlPen() external view returns (IVlPen);

    function penPoolFactory() external view returns (IPenPoolFactory);

    function dyst() external view returns (IDyst);

    function ve() external view returns (IVe);

    function voterProxy() external view returns (IVoterProxy);

    function votingSnapshot() external view returns (IVotingSnapshot);

    function tokensAllowlist() external view returns (ITokensAllowlist);

    function isPartner(address userProxyAddress) external view returns (bool);

    function stakedPenDystBalanceOf(address accountAddress)
        external
        view
        returns (uint256 stakedBalance);

    function dystInflationSinceInception() external view returns (uint256);
}