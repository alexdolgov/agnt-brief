// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Plugins} from "@cryptoalgebra/integral-core/contracts/libraries/Plugins.sol";
import {IAlgebraPlugin} from
    "@cryptoalgebra/integral-core/contracts/interfaces/plugin/IAlgebraPlugin.sol";

import {IAlgebraFeePluginFactory} from "src/interfaces/IAlgebraFeePluginFactory.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @notice Interface for retrieving the fee recipient of a BCToken.
 */
interface IBCTokenFeeRecipient {
    /**
     * @notice Returns the effective fee recipient for the token.
     * @return The fee recipient address.
     */
    function getFeeRecipient() external view returns (address);
}

import "./lib/CamelotBasePlugin.sol";
import "./lib/camelot/base/AlgebraFeeConfiguration.sol";

/**
 * @title AlgebraFeePluginV1
 * @author Camelot
 * @notice Sliding-fee plugin that redistributes Algebra pool swap fees between
 *         a staking vault, the protocol owner, and the token's fee recipient.
 * @dev Extends {CamelotBasePlugin} with community-fee-ratio logic. When a
 *      staking address is configured, the BCToken-side fees are split between
 *      staking and the fee recipient using `communityFeeRatio`. When no staking
 *      address is set, BCToken-side fees are split between the protocol owner
 *      and the fee recipient using the factory's `protocolFeeRatio`. WETH-side
 *      fees always use the factory's `protocolFeeRatio`.
 */
contract AlgebraFeePluginV1 is CamelotBasePlugin {
    using Plugins for uint8;

    /**
     * @notice Emitted when the staking address is updated by the plugin factory.
     * @param staking The new staking vault address.
     */
    event StakingAddressSet(address staking);

    /**
     * @notice Error thrown when the caller is not the plugin factory.
     */
    error OnlyPluginFactory();

    /**
     * @notice Error thrown when the community fee ratio exceeds 100.
     */
    error InvalidCommunityFeeRatio();

    /// @notice The BCToken associated with this pool (the non-WETH token).
    address public immutable bcToken;

    /// @notice The staking vault that receives a share of BCToken-side swap fees.
    address public staking;

    /// @notice The percentage (0-100) of BCToken-side swap fees directed to the staking vault.
    uint8 public immutable communityFeeRatio;

    // ──────────────────────────────────────────────
    //  Constructor
    // ──────────────────────────────────────────────

    /**
     * @notice Initialises the plugin with pool references, fee configuration, and community ratio.
     * @param _pool              The Algebra pool this plugin is attached to.
     * @param _factory           The Algebra factory address.
     * @param _pluginFactory     The plugin factory that deployed this plugin.
     * @param _weth              The WETH token address.
     * @param _token0            The pool's token0 address.
     * @param _token1            The pool's token1 address.
     * @param _bcToken           The BCToken (non-WETH) associated with this pool.
     * @param _baseFee           The base fee to override the default sliding-fee configuration.
     * @param _communityFeeRatio The percentage (0-100) of BCToken fees directed to staking.
     */
    constructor(
        address _pool,
        address _factory,
        address _pluginFactory,
        address _weth,
        address _token0,
        address _token1,
        address _bcToken,
        uint16 _baseFee,
        uint8 _communityFeeRatio
    )
        CamelotBasePlugin(
            _pool,
            _factory,
            _pluginFactory,
            AlgebraFeeConfiguration({
                alpha1: 3000,
                alpha2: 7000,
                beta1: 360,
                beta2: 60_000,
                gamma1: 59,
                gamma2: 8500,
                baseFee: 5000
            }),
            _baseFee,
            _weth,
            _token0,
            _token1
        )
    {
        if (_communityFeeRatio > 100) revert InvalidCommunityFeeRatio();

        bcToken = _bcToken;
        communityFeeRatio = _communityFeeRatio;
        slidingFeeEnabled = false;
    }

    // ──────────────────────────────────────────────
    //  External (state-changing)
    // ──────────────────────────────────────────────

    /**
     * @notice Handles plugin fee distribution for token0 and token1.
     * @param feeSent0 The amount of token0 fees to distribute.
     * @param feeSent1 The amount of token1 fees to distribute.
     * @return The plugin selector.
     */
    function handlePluginFee(uint256 feeSent0, uint256 feeSent1)
        external
        override
        onlyPool
        returns (bytes4)
    {
        address coin = token0 == WETH ? token1 : token0;
        uint256 coinAmount = token0 == coin ? feeSent0 : feeSent1;

        address _staking = staking;
        address protocolOwner = IAlgebraFeePluginFactory(pluginFactory).factoryOwner();
        address _feeReceiver = IBCTokenFeeRecipient(bcToken).getFeeRecipient();

        // If staking is set, distribute coin fees between staking and feeReceiver.
        // If staking is address(0), distribute coin fees between protocolOwner and feeReceiver.
        if (_staking != address(0)) {
            _distributeFee(
                coin, coinAmount, communityFeeRatio, _staking, _feeReceiver
            );
        } else {
            _distributeFee(
                coin,
                coinAmount,
                IAlgebraFeePluginFactory(pluginFactory).protocolFeeRatio(),
                protocolOwner,
                _feeReceiver
            );
        }

        _distributeFee(
            WETH,
            token0 == WETH ? feeSent0 : feeSent1,
            IAlgebraFeePluginFactory(pluginFactory).protocolFeeRatio(),
            protocolOwner,
            _feeReceiver
        );

        return IAlgebraPlugin.handlePluginFee.selector;
    }

    /**
     * @notice Sets the staking vault address for community fee distribution.
     * @param _staking The address of the staking vault.
     */
    function setStakingAddress(address _staking) external {
        if (msg.sender != pluginFactory) revert OnlyPluginFactory();
        staking = _staking;

        emit StakingAddressSet(_staking);
    }

    // ──────────────────────────────────────────────
    //  Public (view)
    // ──────────────────────────────────────────────

    /**
     * @notice Returns the fee receiver address.
     * @return The fee receiver address.
     */
    function feeReceiver() public view returns (address) {
        return IBCTokenFeeRecipient(bcToken).getFeeRecipient();
    }

    // ──────────────────────────────────────────────
    //  Internal
    // ──────────────────────────────────────────────

    /**
     * @notice Distributes a fee amount between two recipients according to a percentage ratio.
     *         `recipientA` receives `amount * ratio / 100` and `recipientB` receives the remainder.
     *         Skips zero-value transfers to save gas.
     * @param token      The ERC-20 token to transfer.
     * @param amount     The total fee amount to distribute.
     * @param ratio      The percentage (0-100) allocated to `recipientA`.
     * @param recipientA The address receiving `ratio`% of the fee.
     * @param recipientB The address receiving the remainder.
     */
    function _distributeFee(
        address token,
        uint256 amount,
        uint256 ratio, // percent (0-100)
        address recipientA,
        address recipientB
    ) internal {
        if (amount == 0) return;
        uint256 amountA = (amount * ratio) / 100;
        uint256 amountB = amount - amountA;
        if (amountA > 0) {
            IERC20(token).transfer(recipientA, amountA);
        }
        if (amountB > 0) {
            IERC20(token).transfer(recipientB, amountB);
        }
    }
}
