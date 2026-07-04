// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../../interfaces/IBCToken.sol";
import "../../../interfaces/IBondToken.sol";

import "../../libraries/Errors.sol";
import "../../libraries/MiniHelpers.sol";

import "../../erc20/FiraERC20.sol";

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @title BondToken
 * @notice ERC20 token representing future fixed-rate cash flows with a specific expiry date
 * @dev Bond Tokens (BT) are created in pairs with Coupon Tokens (CT) via YieldContractFactory.
 *      Each BT represents a claim to the principal portion of wrapped yield at expiry.
 *      BT can be minted/burned by the corresponding CT or the LiquidityInjector contract.
 */
contract BondToken is FiraERC20, Initializable, IBondToken {
    /// @notice The Fira Wrapped (FW) token that backs this bond token
    address public immutable FW;

    /// @notice The YieldContractFactory that deployed this bond token
    address public immutable factory;

    /// @notice Unix timestamp when this bond token expires
    uint256 public immutable expiry;

    /// @notice The corresponding Coupon Token for this bond token
    address public CT;

    /// @notice The LiquidityInjector contract authorized to mint/burn BT
    address public liquidityInjector;

    modifier onlyCT() {
        if (msg.sender != CT) revert Errors.OnlyCT();
        _;
    }

    modifier onlyYieldFactory() {
        if (msg.sender != factory) revert Errors.OnlyYCFactory();
        _;
    }

    modifier onlyLI() {
        if (msg.sender != liquidityInjector) revert Errors.OnlyLI();
        _;
    }

    /**
     * @notice Constructs a new BondToken
     * @param _FW Address of the Fira Wrapped token backing this bond
     * @param _name ERC20 token name
     * @param _symbol ERC20 token symbol
     * @param __decimals Token decimals (matches underlying asset)
     * @param _expiry Unix timestamp when this bond expires
     * @param _liquidityInjector Address of the LiquidityInjector contract
     */
    constructor(
        address _FW,
        string memory _name,
        string memory _symbol,
        uint8 __decimals,
        uint256 _expiry,
        address _liquidityInjector
    ) FiraERC20(_name, _symbol, __decimals) {
        FW = _FW;
        expiry = _expiry;
        factory = msg.sender;
        liquidityInjector = _liquidityInjector;
    }

    /**
     * @notice Initializes the bond token by setting its corresponding Coupon Token
     * @dev Can only be called once by the YieldContractFactory during deployment
     * @param _CT Address of the corresponding Coupon Token
     */
    function initialize(address _CT) external initializer onlyYieldFactory {
        CT = _CT;
    }

    /**
     * @notice Burns bond tokens from a user's balance
     * @dev Only callable by the corresponding Coupon Token contract
     * @param user Address to burn tokens from
     * @param amount Amount of tokens to burn
     */
    function burnByCT(address user, uint256 amount) external onlyCT {
        _burn(user, amount);
    }

    /**
     * @notice Mints bond tokens to a user's balance
     * @dev Only callable by the corresponding Coupon Token contract
     * @param user Address to mint tokens to
     * @param amount Amount of tokens to mint
     */
    function mintByCT(address user, uint256 amount) external onlyCT {
        _mint(user, amount);
    }

    /**
     * @notice Mints bond tokens to a user via the LiquidityInjector
     * @dev Only callable by the LiquidityInjector contract for liquidity provisioning
     * @param user Address to mint tokens to
     * @param amount Amount of tokens to mint
     */
    function mintByLI(address user, uint256 amount) external onlyLI {
        _mint(user, amount);
    }

    /**
     * @notice Burns bond tokens from a user via the LiquidityInjector
     * @dev Only callable by the LiquidityInjector contract for liquidity removal
     * @param user Address to burn tokens from
     * @param amount Amount of tokens to burn
     */
    function burnByLI(address user, uint256 amount) external onlyLI {
        _burn(user, amount);
    }

    /**
     * @notice Checks if the bond token has expired
     * @return True if the current timestamp is past the expiry, false otherwise
     */
    function isExpired() public view returns (bool) {
        return MiniHelpers.isCurrentlyExpired(expiry);
    }
}
