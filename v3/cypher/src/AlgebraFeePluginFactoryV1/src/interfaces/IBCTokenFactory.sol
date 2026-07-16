// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IBondingCurve} from "src/interfaces/IBondingCurve.sol";

/**
 * @title IBCTokenFactory
 * @author Camelot
 * @notice Interface for the factory contract that deploys bonding-curve-backed BCTokens with optional
 * staking vaults and creator buy functionality.
 */
interface IBCTokenFactory {
    /**
     * @notice Struct containing address configurations for the factory.
     * @param owner Address owner of the contract.
     * @param harvester Address of the contract that can harvest LP positions.
     * @param positionManager Address of liquidity NFT Position Manager contract.
     * @param weth Address of WETH token.
     * @param tokenDeployer Address of the BCTokenDeployer contract.
     * @param tokenVesting Address of the token vesting contract.
     */
    struct FactoryAddresses {
        address owner;
        address harvester;
        address positionManager;
        address weth;
        address tokenDeployer;
        address tokenVesting;
    }

    /**
     * @notice Struct containing curve and fee parameters for the factory.
     * @param virtualReserves Initial virtual reserves of the bonding curve.
     * @param initialSupply Initial supply of coin allocated to the bonding curve for seeding LP.
     * @param maxSupply Maximum coin supply allowed.
     * @param protocolFee Fee charged by the protocol when bonding curve LPs.
     * @param creatorFee Fee earned by the creator when bonding curve LPs.
     * @param refundFee Fee paid to the caller who triggers LP seeding.
     * @param creationFee Fee earned by the protocol when coin is created.
     */
    struct FactoryParams {
        uint256 virtualReserves;
        uint256 initialSupply;
        uint256 maxSupply;
        uint80 protocolFee;
        uint80 creatorFee;
        uint80 refundFee;
        uint80 creationFee;
    }

    /**
     * @notice Struct containing staking configuration for pool creation.
     * @param deployStaking Whether to deploy a staking vault for the pool.
     * @param alternativeFeeRecipient Alternative fee recipient for WETH and coin fees. Can be
     * used with or without a staking vault.
     */
    struct StakingConfig {
        bool deployStaking;
        address alternativeFeeRecipient;
    }

    /**
     * @notice Provided address cannot be the zero-address.
     */
    error InvalidZeroAddress();

    /**
     * @notice The sent value is not enough to cover the creation fee.
     */
    error InsufficientCreationFee();

    /**
     * @notice Failed to send ETH when withdrawing from factory.
     */
    error FailedToSendETH();

    /**
     * @notice BCToken factory initial params are invalid.
     * initialSupply and virtualReserves must be higher than 0.
     * initialSupply must be lower than maxSupply.
     */
    error InvalidInitialParams();

    /**
     * @notice Fees cannot be higher than `MAX_FEE`.
     */
    error InvalidFees();

    /**
     * @notice Protocol is paused and action cannot be performed.
     */
    error ProtocolPaused();

    /**
     * @notice BCToken params are invalid or duplicated.
     */
    error InvalidParams();

    /**
     * @notice Community fee ratio cannot be higher than 100.
     */
    error InvalidCommunityFeeRatio();

    /**
     * @notice Community fee ratio must be greater than 0 when deploying a staking vault.
     */
    error StakingRequiresCommunityFee();

    /**
     * @notice Salt has already been used for deployment.
     */
    error SaltAlreadyUsed();

    /**
     * @notice Creator buy amount exceeds the maximum allowed percentage of total supply,
     * as defined by `maxCreatorBuyBps`.
     */
    error CreatorBuyExceedsCap();

    /**
     * @notice The provided max creator buy bps value exceeds the protocol hard cap of 25% (2500 bps).
     */
    error ExceedsHardCap();

    /**
     * @notice Emitted when fees are updated.
     */
    event FeesUpdated(uint80 protocolFee, uint80 creatorFee, uint80 refundFee, uint80 creationFee);

    /**
     * @notice Emitted when the BondingCurve contract changes.
     */
    event BondingCurveUpdated(address indexed bondingCurve);

    /**
     * @notice Emitted when the LiquidityManager contract changes.
     */
    event LiquidityManagerUpdated(address indexed liquidityManager);

    /**
     * @notice Emitted when a new BCToken is deployed.
     */
    event CoinDeployed(
        address indexed creator,
        address indexed token,
        address factory,
        address lp,
        string name,
        string symbol,
        string description,
        string image,
        uint256 initialSupply,
        uint256 maxSupply,
        uint256 initialETHReserves,
        uint256 initialPrice,
        uint256 initialMarketCap,
        uint256 targetETH
    );

    /**
     * @notice Emitted when the harvester contract is updated.
     */
    event UpdatedHarvester(address newHarvester);

    /**
     * @notice Emitted when the token vesting contract is updated.
     */
    event TokenVestingUpdated(address tokenVesting);

    /**
     * @notice Emitted when the initial params for a new coin are updated.
     */
    event UpdatedInitialParams(uint256 virtualReserves, uint256 initialSupply, uint256 maxSupply);

    /**
     * @notice Emitted when the maximum percentage of total supply a creator can buy on deployment
     * is updated.
     * @param newMaxBps The new maximum creator buy percentage in basis points.
     */
    event MaxCreatorBuyBpsUpdated(uint256 newMaxBps);

    /**
     * @notice Emitted when a creator purchases tokens as part of the deployment transaction.
     * @param creator Address of the token creator performing the buy.
     * @param token Address of the newly deployed BCToken.
     * @param ethAmount Amount of ETH spent on the creator buy.
     * @param tokenAmount Amount of tokens received by the creator.
     */
    event CreatorBuy(address indexed creator, address indexed token, uint256 ethAmount, uint256 tokenAmount);

    /**
     * @notice Emitted when default pool (POL) seeding is toggled.
     * @param enabled Whether default pool seeding is active.
     */
    event DefaultPoolEnabledUpdated(bool enabled);

    /**
     * @notice Returns the position manager address.
     * @return The address of the NFT Position Manager contract.
     */
    function POSITION_MANAGER() external view returns (address);

    /**
     * @notice Returns the WETH token address.
     * @return The address of the WETH token.
     */
    function WETH() external view returns (address);

    /**
     * @notice Returns whether the protocol is paused or not.
     * @return Whether the protocol is paused.
     */
    function PROTOCOL_PAUSED() external view returns (bool);

    /**
     * @notice Returns whether an address is a coin created by the Token Factory.
     * @return Whether the address is a valid BCToken.
     */
    function bcTokens(address) external view returns (bool);

    /**
     * @notice Given a bytes32 hash returns the coin address that has been created with that configuration.
     * @return The address of the coin.
     */
    function bcTokensParams(bytes32) external view returns (address);

    /**
     * @notice Returns the contract that can harvest LP positions.
     * @return The address of the harvester contract.
     */
    function harvester() external view returns (address);

    /**
     * @notice Returns the contract's bonding curve address.
     * @return The address of the bonding curve contract.
     */
    function bondingCurve() external returns (IBondingCurve);

    /**
     * @notice Returns the contract's liquidity manager address.
     * @return The address of the liquidity manager contract.
     */
    function liquidityManager() external returns (address);

    /**
     * @notice Returns the token vesting contract address.
     * @return The address of the token vesting contract.
     */
    function tokenVesting() external view returns (address);

    /**
     * @notice Deploys a new coin using CREATE3.
     * @param name The name of the new coin.
     * @param symbol The symbol of the new coin.
     * @param description The description of the new coin.
     * @param image The image source code to store.
     * @param communityFeeRatio The community fee ratio for the new coin. Cannot be higher than 100.
     * @param salt The salt for the CREATE3 deployment.
     * @param stakingConfig Staking vault configuration.
     * @return The address of the newly deployed coin.
     */
    function deploy(
        string calldata name,
        string calldata symbol,
        string calldata description,
        string calldata image,
        uint8 communityFeeRatio,
        bytes32 salt,
        StakingConfig calldata stakingConfig
    ) external payable returns (address);

    /**
     * @notice Withdraws ETH fees from contract.
     * @param amount Amount of ETH to withdraw.
     */
    function withdraw(uint256 amount) external;

    /**
     * @notice Sets the address of the bonding curve.
     * @param _bondingCurve Address of the bonding curve contract.
     */
    function setBondingCurve(address _bondingCurve) external;

    /**
     * @notice Sets the address of the liquidity manager.
     * @param _liquidityManager Address of the liquidity manager contract.
     */
    function setLiquidityManager(address _liquidityManager) external;

    /**
     * @notice Updates new coin's initial params.
     * @param _virtualReserves New initial virtual reserves.
     * @param _initialSupply New coin initial supply.
     * @param _maxSupply New coin `MAX_SUPPLY`.
     */
    function updateInitialParams(
        uint256 _virtualReserves,
        uint256 _initialSupply,
        uint256 _maxSupply
    ) external;

    /**
     * @notice Updates fees for protocol and creator.
     * @param _protocolFee Fee earned by the protocol when bonding curve LPs in bps.
     * @param _creatorFee Fee earned by the creator when bonding curve LPs in bps.
     * @param _creationFee The fee charged to create a new coin.
     */
    function updateFees(uint80 _protocolFee, uint80 _creatorFee, uint80 _refundFee, uint80 _creationFee) external;

    /**
     * @notice Sets the address of the harvester contract.
     * @param _harvester The new address to set as harvester.
     */
    function setHarvester(address _harvester) external;

    /**
     * @notice Sets the address of the token vesting contract.
     * @param _tokenVesting The new address to set as token vesting.
     */
    function setTokenVesting(address _tokenVesting) external;

    /**
     * @notice Sets the current paused state of the protocol.
     * @param _state Whether the protocol is paused or not.
     */
    function setProtocolPaused(bool _state) external;

    /**
     * @notice Returns the bonding curve initialisation parameters for newly deployed tokens.
     * @return virtualReserves The virtual ETH reserves seeded into the bonding curve.
     * @return initialSupply The initial token supply minted to the bonding curve.
     * @return maxSupply The maximum token supply; LP is seeded when reached.
     */
    function initialParams()
        external
        view
        returns (uint256 virtualReserves, uint256 initialSupply, uint256 maxSupply);

    /**
     * @notice Returns the current fee configuration for the factory.
     * @return protocolFee Fee earned by the protocol when bonding curve LPs in bps.
     * @return creatorFee Fee earned by the creator when bonding curve LPs in bps.
     * @return refundFee Fee paid to the caller who triggers LP seeding in bps.
     * @return creationFee Fee charged to create a new coin in wei.
     */
    function feeConfig() external view returns (uint80 protocolFee, uint80 creatorFee, uint80 refundFee, uint80 creationFee);

    /**
     * @notice Returns the maximum percentage of total supply a creator can buy on deployment.
     * @return The max creator buy cap in basis points (e.g., 2500 = 25%).
     */
    function maxCreatorBuyBps() external view returns (uint256);

    /**
     * @notice Sets the maximum percentage of total supply a creator can buy on deployment.
     * @notice Cannot exceed the hard cap of 25% (2500 bps). Only callable by the factory owner.
     * @param _newMaxBps The new max creator buy percentage in basis points.
     */
    function setMaxCreatorBuyBps(uint256 _newMaxBps) external;

    /**
     * @notice Returns whether default pool (POL) seeding is enabled.
     * @return Whether default pool seeding is active.
     */
    function defaultPoolEnabled() external view returns (bool);

    /**
     * @notice Enables or disables default pool (POL) seeding.
     * @param _enabled Whether default pool seeding should be active.
     */
    function setDefaultPoolEnabled(bool _enabled) external;
}
