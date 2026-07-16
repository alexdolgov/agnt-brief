// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IBCTokenFactory} from "src/interfaces/IBCTokenFactory.sol";

/**
 * @title IBCToken
 * @author Camelot
 * @notice Interface for BCToken, an ERC-20 token with an integrated bonding curve that
 * automatically seeds a liquidity pool once the maximum supply is reached.
 */
interface IBCToken {
    /**
     * @notice Initial parameters to create a new coin.
     * @param _name Token name.
     * @param _symbol Token ticker symbol.
     * @param _img On-chain image URI metadata.
     * @param _description Human-readable description of the token.
     * @param _creator Address of the token creator.
     * @param _initialOwner Address that receives ownership of the token contract.
     * @param _factory Address of the BCTokenFactory that deployed this token.
     * @param _bondingCurve Address of the BondingCurve contract for buy/sell logic.
     * @param _positionManager Address of the Uniswap NFT Position Manager.
     * @param _weth Address of the canonical WETH contract.
     * @param _virtualReserves Initial virtual ETH reserves for the bonding curve.
     * @param _initialSupply Initial token supply minted to the contract.
     * @param _maxSupply Maximum token supply; LP is seeded when this is reached.
     * @param _protocolFee Protocol fee in bps charged upon LP seeding.
     * @param _creatorFee Creator fee in bps paid upon LP seeding.
     * @param _refundFee Fee in bps paid to the caller who triggers LP seeding.
     * @param _communityFeeRatio Community fee ratio (0-100) for staking vault distributions.
     * @param _stakingConfig Staking vault deployment and fee recipient configuration.
     */
    struct InitParams {
        string _name;
        string _symbol;
        string _img;
        string _description;
        address _creator;
        address _initialOwner;
        address _factory;
        address _bondingCurve;
        address _positionManager;
        address _weth;
        uint256 _virtualReserves;
        uint256 _initialSupply;
        uint256 _maxSupply;
        uint80 _protocolFee;
        uint80 _creatorFee;
        uint80 _refundFee;
        uint8 _communityFeeRatio;
        IBCTokenFactory.StakingConfig _stakingConfig;
    }

    /**
     * @notice Amount would exceed coin `MAX_SUPPLY` or ETH deposited in BCToken.
     */
    error AmountExceeded();

    /**
     * @notice Token has reached the LP stage and bonding curve burns are no longer allowed.
     */
    error CurveCannotBurnTokens();

    /**
     * @notice Function is not allowed while token is in bonding curve stage.
     */
    error CannotPerformUntilLP();

    /**
     * @notice Token has reached the LP stage and mints are no longer allowed.
     */
    error CannotMintTokens();

    /**
     * @notice Only `FACTORY` owner or bonding curve contract can call.
     */
    error InvalidCaller();

    /**
     * @notice Liquidity pool already exists or sqrtX96Price is invalid.
     */
    error InvalidLiquidityPool();

    /**
     * @notice Failed to send ETH when minting or burning tokens.
     */
    error FailedToSendETH();

    /**
     * @notice Address cannot be zero.
     */
    error AddressZero();

    /**
     * @notice Caller is not the token creator; only the creator may set an alternative fee
     * recipient when none has been assigned yet.
     */
    error OnlyCreator();

    /**
     * @notice Caller is not the current alternative fee recipient; only the active alternative
     * fee recipient may delegate to a new address.
     */
    error OnlyCurrentFeeRecipient();

    /**
     * @notice Emitted when token is minted.
     * @param to Address receiving minted tokens.
     * @param amount Amount of tokens minted.
     */
    event Mint(address to, uint256 amount);

    /**
     * @notice Emitted when a token is burned.
     * @param from Address burning tokens.
     * @param amount Amount of tokens burned.
     */
    event Burn(address from, uint256 amount);

    /**
     * @notice Emitted when an address's whitelist status is updated.
     * @param account The address whose whitelist status changed.
     * @param status The new whitelist status.
     */
    event TransferWhitelistUpdated(address indexed account, bool status);

    /**
     * @notice Emitted when the alternative fee recipient is updated.
     * @param newRecipient The new alternative fee recipient address (address(0) clears it).
     */
    event AlternativeFeeRecipientUpdated(address indexed newRecipient);

    /**
     * @notice Returns the address of the Token Factory.
     * @return The address of the Token Factory.
     */
    function FACTORY() external view returns (address);

    /**
     * @notice Returns the amount of ETH needed to seed the liquidity pool.
     * @return The amount of ETH needed to seed the liquidity pool.
     */
    function TARGET_ETH() external view returns (uint256);

    /**
     * @notice Returns the initial virtual balance of the coin.
     * @return The initial virtual balance of the coin.
     */
    function VIRTUAL_BALANCE() external view returns (uint256);

    /**
     * @notice Returns the initial supply of the coin.
     * @return The initial supply of the coin.
     */
    function INITIAL_SUPPLY() external view returns (uint256);

    /**
     * @notice Returns the maximum token supply allowed.
     * @notice When `totalSupply()` equals `MAX_SUPPLY`, liquidity pool is seeded.
     * @return The maximum token supply allowed.
     */
    function MAX_SUPPLY() external view returns (uint256);

    /**
     * @notice Returns the fee charged in bps by the protocol when the bonding curve is completed.
     * @return The fee charged in bps by the protocol when the bonding curve is completed.
     */
    function PROTOCOL_FEE() external view returns (uint80);

    /**
     * @notice Returns the fee paid in bps to the coin creator when the bonding curve is
     * completed.
     * @return The fee paid in bps to the coin creator when the bonding curve is completed.
     */
    function CREATOR_FEE() external view returns (uint80);

    /**
     * @notice Returns the fee paid in bps to the caller who triggers LP seeding.
     * @return The refund fee in basis points.
     */
    function REFUND_FEE() external view returns (uint80);

    /**
     * @notice Returns the community fee ratio (0-100) applied to swap fees in the pool,
     * directing a portion to the community staking vault.
     * @return The community fee ratio (0-100).
     */
    function COMMUNITY_FEE_RATIO() external view returns (uint8);

    /**
     * @notice Returns the address of the token creator.
     * @return The creator address set at deployment.
     */
    function creator() external view returns (address);

    /**
     * @notice Returns the address of the LP for the coin.
     * @return The address of the created pool.
     */
    function lp() external view returns (address);

    /**
     * @notice Returns the address of the harvester contract for LP positions.
     * @return The address of the factory LP positions harvester.
     */
    function harvester() external view returns (address);

    /**
     * @notice Returns whether the bonding curve has reached the LP stage.
     * @return The status of LP.
     */
    function isLPd() external view returns (bool);

    /**
     * @notice Mints token to recipient.
     * @dev Only callable by the bonding curve contract.
     * @param to Address of user to receive tokens.
     * @param amount Amount of tokens minted.
     * @param amountETH Amount of ETH used to mint tokens.
     */
    function mint(address to, uint256 amount, uint256 amountETH) external payable;

    /**
     * @notice Burns existing tokens on the bonding curve.
     * @dev Only callable by the bonding curve contract.
     * @param owner Address of user burning tokens.
     * @param amount Amount of tokens burned.
     * @param amountETH Amount of ETH returned to burner user.
     */
    function burnCurve(address owner, uint256 amount, uint256 amountETH) external;

    /**
     * @notice Burns existing tokens by user.
     * @notice Cannot be performed until token has LPd.
     * @param amount Amount of tokens to burn.
     */
    function burn(uint256 amount) external;

    /**
     * @notice Returns the current price of the token.
     * @notice Price is defined as the amount of ETH to receive if one entire coin is sold to
     * the bonding curve.
     * @return The amount of ETH per coin.
     */
    function price() external view returns (uint256);

    /**
     * @notice Returns the token's metadata.
     * @return The image URI of the coin.
     */
    function tokenURI() external returns (string memory);

    /**
     * @notice Returns the amount of ETH accumulated through buys/sells, including VIRTUAL_RESERVES.
     * @return The amount of ETH.
     */
    function reserveBalance() external view returns (uint256);

    /**
     * @notice Returns the amount of ETH accumulated through buys/sells, excluding VIRTUAL_RESERVES.
     * @return The amount of ETH.
     */
    function TVL() external view returns (uint256);

    /**
     * @notice Returns the human-readable description of the token.
     * @return The human-readable description of the token.
     */
    function description() external view returns (string memory);

    /**
     * @notice Returns whether an address is whitelisted for transfers before LP.
     * @param account The address to check.
     * @return Whether the address is whitelisted.
     */
    function transferWhitelist(address account) external view returns (bool);

    /**
     * @notice Sets the whitelist status of an address for transfers before LP.
     * @notice Only callable by owner or factory.
     * @param account The address to update.
     * @param status The new whitelist status.
     */
    function setTransferWhitelist(address account, bool status) external;

    /**
     * @notice Returns the current alternative fee recipient address.
     * @return The alternative fee recipient, or address(0) if not set.
     */
    function alternativeFeeRecipient() external view returns (address);

    /**
     * @notice Sets or clears the alternative fee recipient for creator/community fees.
     * @notice If no alternative fee recipient is currently set, only the token creator can
     * assign one. If one is already set, only the current alternative fee recipient may
     * delegate to a new address. Pass address(0) to clear the override back to the creator.
     * @param _recipient The new alternative fee recipient (address(0) to clear).
     */
    function setAlternativeFeeRecipient(address _recipient) external;

    /**
     * @notice Returns the effective fee recipient (alternative fee recipient if set, otherwise
     * the token creator).
     * @return The address that currently receives creator/community fee distributions.
     */
    function getFeeRecipient() external view returns (address);
}
