// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

import {ERC20} from "solady/src/tokens/ERC20.sol";
import {SafeTransferLib} from "solady/src/utils/SafeTransferLib.sol";
import {FixedPointMathLib} from "solady/src/utils/FixedPointMathLib.sol";
import {ReentrancyGuard} from "solady/src/utils/ReentrancyGuard.sol";

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";


interface IClanker {
    struct TokenConfig {
        address tokenAdmin;
        string name;
        string symbol;
        bytes32 salt;
        string image;
        string metadata;
        string context;
        uint256 originatingChainId;
    }

    struct PoolConfig {
        address hook;
        address pairedToken;
        int24 tickIfToken0IsClanker;
        int24 tickSpacing;
        bytes poolData;
    }

    struct LockerConfig {
        address locker;
        // reward info
        address[] rewardAdmins;
        address[] rewardRecipients;
        uint16[] rewardBps;
        // liquidity placement info
        int24[] tickLower;
        int24[] tickUpper;
        uint16[] positionBps;
        bytes lockerData;
    }

    struct ExtensionConfig {
        address extension;
        uint256 msgValue;
        uint16 extensionBps;
        bytes extensionData;
    }

    struct MevModuleConfig {
        address mevModule;
        bytes mevModuleData;
    }

    struct DeploymentConfig {
        TokenConfig tokenConfig;
        PoolConfig poolConfig;
        LockerConfig lockerConfig;
        MevModuleConfig mevModuleConfig;
        ExtensionConfig[] extensionConfigs;
    }
}

interface IClankerExtension {
    function receiveTokens(
        IClanker.DeploymentConfig calldata deploymentConfig,
        PoolKey memory poolKey,
        address token,
        uint256 extensionSupply,
        uint256 extensionIndex
    ) external payable;
}

interface IBFactory {
    struct CreateFromInvariantParams {
        address bToken;
        uint256 initialPoolBTokens;
        address reserve;
        uint256 initialInvariant;
        address creator;
        address feeRecipient;
        uint256 creatorFeePct;
        uint256 swapFeePct;
        bool createHook;
    }

    function createPoolFromInvariant(CreateFromInvariantParams calldata params) external;
}

interface IBLens {
    function previewInvariantForPrice(uint256 _launchPrice, uint256 _totalSupply, uint8 _bTokenDecimals)
        external
        pure
        returns (uint256 initialInvariant_);
}

/// @notice Clanker extension that routes 100% of a token launch into a Baseline
///         invariant-initialized pool.
contract BaselineClankerExtension is IClankerExtension, ReentrancyGuard {
    error OnlyClanker();
    error MustReceiveFullSupply();
    error InvalidMsgValue();

    using SafeTransferLib for address;

    /// @dev Baseline pool parameters, passed through ExtensionConfig.extensionData
    struct BaselineConfig {
        address creator; // address that can change the feeRecipient address.
        address feeRecipient; // the recipient of the creator fees.
        uint256 creatorFeePct; // [WAD] 50% represents 50% of the pools fees going to creator and 50% to stakers.
        uint256 swapFeePct; // [WAD] 0.0015 ether(0.15%) minimum, .5 ether(50%) maximum.
    }

    address public immutable CLANKER;
    address public immutable RELAY;

    constructor(address _clanker, address _relay) {
        CLANKER = _clanker;
        RELAY = _relay;
    }

    function receiveTokens(
        IClanker.DeploymentConfig calldata deploymentConfig,
        PoolKey memory, // clanker's v4 poolKey — unused
        address token,
        uint256 extensionSupply,
        uint256 extensionIndex
    ) external payable nonReentrant {
        require(msg.sender == CLANKER, OnlyClanker());
        require(msg.value == 0, InvalidMsgValue());

        // hard requirement: invariant init assumes circ == 0, so the ENTIRE supply must land
        // in the pool. Rejects any deployment config where other extensions take a bps cut.
        require(extensionSupply == ERC20(token).totalSupply(), MustReceiveFullSupply());

        BaselineConfig memory cfg = abi.decode(
            deploymentConfig.extensionConfigs[extensionIndex].extensionData, (BaselineConfig)
        );

        // derive the launch invariant from the deployment's own starting tick, so the
        // baseline pool deploys at exactly the price the deployer committed to for the
        // uniswap v4 pool — in whatever paired token the config names (the reserve still
        // has to be baseline-approved or createPoolFromInvariant reverts)
        uint256 initialInvariant = _invariantFromTick(
            deploymentConfig.poolConfig.tickIfToken0IsClanker,
            deploymentConfig.poolConfig.pairedToken,
            extensionSupply
        );

        token.safeTransferFrom(CLANKER, address(this), extensionSupply);
        token.safeApprove(RELAY, extensionSupply);

        IBFactory(RELAY).createPoolFromInvariant(IBFactory.CreateFromInvariantParams({
            bToken: token,
            initialPoolBTokens: extensionSupply,
            reserve: deploymentConfig.poolConfig.pairedToken,
            initialInvariant: initialInvariant,
            creator: cfg.creator,
            feeRecipient: cfg.feeRecipient,
            creatorFeePct: cfg.creatorFeePct,
            swapFeePct: cfg.swapFeePct,
            createHook: true // univ4 is deployed on every chain clanker is deployed on
        }));
    }

    /// @dev Conversion is staged through 512-bit fullMulDivs
    ///      (sqrtPrice^2 overflows uint256 at extreme ticks), and the price is
    ///      normalized to WAD reserve units the way baseline accounts reserves.
    ///      Degenerate ticks produce an out-of-band K and revert in initializeFromInvariant.
    function _invariantFromTick(int24 _tickIfToken0IsClanker, address _reserve, uint256 _totalSupply)
        internal
        view
        returns (uint256 initialInvariant_)
    {
        uint256 sqrtPriceX96 = TickMath.getSqrtPriceAtTick(_tickIfToken0IsClanker);

        // price of one WAD clanker token in WAD reserve units (baseline prices are
        // reserve-decimals-normalized).
        uint256 priceX96 = FixedPointMathLib.fullMulDiv(sqrtPriceX96, sqrtPriceX96, 1 << 96);
        uint256 scaleWad = 1e18 * 10 ** (18 - ERC20(_reserve).decimals());
        uint256 priceWad = FixedPointMathLib.fullMulDiv(priceX96, scaleWad, 1 << 96);

        initialInvariant_ = IBLens(RELAY).previewInvariantForPrice(priceWad, _totalSupply, 18);
    }

    function supportsInterface(bytes4 interfaceId) external pure returns (bool) {
        return interfaceId == type(IClankerExtension).interfaceId || interfaceId == 0x01ffc9a7; // IERC165
    }
}
