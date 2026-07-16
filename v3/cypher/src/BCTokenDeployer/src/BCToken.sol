// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IBondingCurve} from "src/interfaces/IBondingCurve.sol";
import {ILiquidityManager} from "src/interfaces/ILiquidityManager.sol";
import {IBCTokenFactory} from "src/interfaces/IBCTokenFactory.sol";
import {IBCToken} from "src/interfaces/IBCToken.sol";
import {IWETH} from "src/interfaces/IWETH.sol";

/**
 * @title BCToken
 * @author Camelot
 * @notice ERC-20 token with an integrated bonding curve that automatically seeds a
 * liquidity pool once the maximum supply is reached.
 */
contract BCToken is ERC20, Ownable, IBCToken {
    using SafeERC20 for IERC20;

    /// @notice The address of the BCToken factory.
    address public immutable FACTORY;

    /// @dev Address of the NFTPositionManager used for LP position creation.
    address public immutable POSITION_MANAGER;

    /// @dev Address of the LiquidityManager contract responsible for pool creation and seeding.
    address public immutable LIQUIDITY_MANAGER;

    /// @dev Address of the canonical WETH contract.
    address public immutable WETH;

    /// @notice The address of the token creator.
    address public immutable creator;

    /// @dev Address of the BondingCurve contract that handles buy/sell logic for this token.
    address public immutable bondingCurve;

    /// @notice The address of the liquidity pool.
    address public immutable lp;

    /// @dev Initial virtual ETH reserves used by the bonding curve pricing formula.
    uint256 public immutable VIRTUAL_BALANCE;

    /// @dev Initial token supply minted to the contract at deployment for bonding curve operations.
    uint256 public immutable INITIAL_SUPPLY;

    /// @notice The maximum token supply.
    uint256 public immutable MAX_SUPPLY;

    /// @notice The amount of ETH needed to seed the liquidity pool.
    uint256 public immutable TARGET_ETH;

    /// @notice The protocol fee in basis points.
    uint80 public immutable PROTOCOL_FEE;

    /// @notice The creator fee in basis points.
    uint80 public immutable CREATOR_FEE;

    /// @notice The refund fee in basis points paid to the graduation caller.
    uint80 public immutable REFUND_FEE;

    /// @notice The community fee ratio (0-100).
    uint8 public immutable COMMUNITY_FEE_RATIO;

    /// @notice Whether the bonding curve has reached the LP stage.
    bool public isLPd;

    /// @notice The current alternative fee recipient address.
    address public alternativeFeeRecipient;

    /// @notice Whitelist of addresses allowed to transfer before LP.
    mapping(address => bool) public transferWhitelist;

    /// @notice Accumulated ETH balance tracked internally (includes virtual reserves).
    uint256 private accETH;

    /// @notice On-chain image URI metadata for this token.
    string private image;

    /// @notice The human-readable description of the token.
    string public description;

    /**
     * @notice Initialises the BCToken with the given parameters.
     * @param params Struct of initial parameters to instantiate the token.
     */
    constructor(InitParams memory params)
        ERC20(params._name, params._symbol)
        Ownable(params._initialOwner)
    {
        FACTORY = params._factory;
        bondingCurve = params._bondingCurve;
        creator = params._creator;
        image = params._img;
        description = params._description;
        POSITION_MANAGER = params._positionManager;
        WETH = params._weth;
        VIRTUAL_BALANCE = params._virtualReserves;
        INITIAL_SUPPLY = params._initialSupply;
        MAX_SUPPLY = params._maxSupply;
        PROTOCOL_FEE = params._protocolFee;
        CREATOR_FEE = params._creatorFee;
        REFUND_FEE = params._refundFee;
        COMMUNITY_FEE_RATIO = params._communityFeeRatio;
        LIQUIDITY_MANAGER = IBCTokenFactory(params._factory).liquidityManager();
        alternativeFeeRecipient = params._stakingConfig.alternativeFeeRecipient;

        accETH += params._virtualReserves;
        _mint(address(this), params._initialSupply);

        (TARGET_ETH, lp) = ILiquidityManager(LIQUIDITY_MANAGER).createAndInitializePools(
            ILiquidityManager.PoolConfig({
                virtualReserves: params._virtualReserves,
                initialSupply: params._initialSupply,
                maxSupply: params._maxSupply,
                protocolFee: params._protocolFee,
                creatorFee: params._creatorFee,
                refundFee: params._refundFee,
                communityFeeRatio: params._communityFeeRatio,
                creator: params._creator
            }),
            params._stakingConfig
        );
    }

    /**
     * @inheritdoc IBCToken
     */
    function setTransferWhitelist(address account, bool status) external {
        if (msg.sender != owner() && msg.sender != FACTORY) revert InvalidCaller();
        if (account == address(0)) revert AddressZero();
        transferWhitelist[account] = status;
        emit TransferWhitelistUpdated(account, status);
    }

    /**
     * @inheritdoc IBCToken
     */
    function setAlternativeFeeRecipient(address _recipient) external {
        address current = alternativeFeeRecipient;
        if (current == address(0)) {
            if (msg.sender != creator) revert OnlyCreator();
        } else {
            if (msg.sender != current) revert OnlyCurrentFeeRecipient();
        }

        alternativeFeeRecipient = _recipient;
        emit AlternativeFeeRecipientUpdated(_recipient);
    }

    /**
     * @inheritdoc IBCToken
     */
    function mint(address to, uint256 amount, uint256 amountETH) external payable {
        _validateBondingCurve();
        uint256 maxSupply = MAX_SUPPLY;

        if (isLPd) revert CannotMintTokens();
        if (totalSupply() + amount > maxSupply) revert AmountExceeded();

        _mint(to, amount);
        accETH += amountETH;

        if (totalSupply() >= maxSupply) _seedLP(to);

        emit Mint(to, amount);
    }

    /**
     * @inheritdoc IBCToken
     */
    function burnCurve(address from, uint256 amount, uint256 amountETH) external {
        _validateBondingCurve();

        if (isLPd) revert CurveCannotBurnTokens();
        if (amountETH > TVL() || totalSupply() - amount < INITIAL_SUPPLY) revert AmountExceeded();

        accETH -= amountETH;
        _burn(from, amount);

        (bool ok,) = bondingCurve.call{value: amountETH}("");
        if (!ok) revert FailedToSendETH();

        emit Burn(from, amount);
    }

    /**
     * @inheritdoc IBCToken
     */
    function getFeeRecipient() public view returns (address) {
        address alt = alternativeFeeRecipient;
        return alt != address(0) ? alt : creator;
    }

    /**
     * @inheritdoc IBCToken
     */
    function tokenURI() external view returns (string memory) {
        return image;
    }

    /**
     * @inheritdoc IERC20
     */
    function transfer(address to, uint256 value) public override returns (bool) {
        if (!isLPd && !transferWhitelist[msg.sender] && !transferWhitelist[to]) {
            revert CannotPerformUntilLP();
        }
        return super.transfer(to, value);
    }

    /**
     * @inheritdoc IERC20
     */
    function transferFrom(address from, address to, uint256 value) public override returns (bool) {
        if (!isLPd && !transferWhitelist[from] && !transferWhitelist[to] && !transferWhitelist[msg.sender]) {
            revert CannotPerformUntilLP();
        }
        return super.transferFrom(from, to, value);
    }

    /**
     * @inheritdoc IBCToken
     */
    function burn(uint256 amount) public {
        if (!isLPd) revert CannotPerformUntilLP();
        _burn(msg.sender, amount);
    }

    /**
     * @inheritdoc IBCToken
     */
    function price() public view returns (uint256) {
        return IBondingCurve(bondingCurve).getAmountOutSell(address(this), 1 ether);
    }

    /**
     * @inheritdoc IBCToken
     */
    function reserveBalance() public view virtual returns (uint256) {
        return accETH;
    }

    /**
     * @inheritdoc IBCToken
     */
    function TVL() public view returns (uint256) {
        return accETH - VIRTUAL_BALANCE;
    }

    /**
     * @inheritdoc IBCToken
     */
    function harvester() public view returns (address) {
        return IBCTokenFactory(FACTORY).harvester();
    }

    /**
     * @notice Seeds the liquidity pool once the bonding curve fills.
     * @dev Wraps ETH to WETH, distributes fees (creator, protocol, refund),
     * then forwards remaining balances to the LiquidityManager.
     * @param caller The address that triggered the LP seeding.
     */
    function _seedLP(address caller) internal {
        uint80 creatorFee = CREATOR_FEE;
        uint80 refundFee = REFUND_FEE;
        uint80 protocolFee = PROTOCOL_FEE;
        address weth = WETH;
        address liquidityManager = LIQUIDITY_MANAGER;

        isLPd = true;

        uint256 ethBalance = TVL();
        IWETH(weth).deposit{value: ethBalance}();
        if (creatorFee > 0) IERC20(weth).safeTransfer(getFeeRecipient(), ethBalance * creatorFee / 10_000);
        if (protocolFee > 0) IERC20(weth).safeTransfer(Ownable(FACTORY).owner(), ethBalance * protocolFee / 10_000);
        if (refundFee > 0) IERC20(weth).safeTransfer(caller, ethBalance * refundFee / 10_000);

        uint256 bcTokenBalance = balanceOf(address(this));
        uint256 wethBalance = IERC20(weth).balanceOf(address(this));

        _approve(address(this), liquidityManager, bcTokenBalance);
        IERC20(weth).approve(liquidityManager, wethBalance);

        ILiquidityManager(liquidityManager).seedLP(bcTokenBalance, wethBalance);
    }

    /**
     * @notice Reverts if caller is not the bonding curve contract.
     */
    function _validateBondingCurve() internal view {
        if (msg.sender != bondingCurve) revert InvalidCaller();
    }
}
