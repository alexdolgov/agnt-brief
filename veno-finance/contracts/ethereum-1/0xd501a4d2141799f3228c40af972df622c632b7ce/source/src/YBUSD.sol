// SPDX-License-Identifier: MIT

/**
 * @title YBUSD
 * @dev A contract for the Yield Bearing USD Token (ybUSD).
 * The contract extends ERC20 and ERC20Permit contracts from OpenZeppelin.
 * It allows users to deposit and redeem ybUSD tokens, which are backed by DAI tokens.
 * The contract also interacts with the ISavingsDai contract for depositing and redeeming DAI tokens.
 */
pragma solidity 0.8.24;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "./interface/ISavingsDai.sol";
import "./interface/ICurve3Pool.sol";

interface ITetherToken {
    function approve(address _spender, uint256 _value) external;
}
contract YBUSD is
    UUPSUpgradeable,
    ERC20Upgradeable,
    ERC20PermitUpgradeable,
    AccessControlEnumerableUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;

    IERC20 public dai;
    IERC20 public usdt;
    IERC20 public usdc;

    ICurve3Pool public Curve3Pool;
    ISavingsDai public sDai;
    uint256 public totalSDai;

    mapping(address => bool) internal blacklisted;

    /**
     *
     * @param sender sender of the deposit
     * @param assets amount of USD stable coin assets deposited
     * @param shares amount of shares of ybUSD minted
     */
    event Deposit(address indexed sender, uint256 assets, uint256 shares);
    /**
     *
     * @param receiver receiver of the redeem
     * @param assets amount of DAI stable coin assets redeemed
     * @param shares amount of shares of ybUSD burned
     */
    event Redeem(address indexed receiver, uint256 assets, uint256 shares);

    /**
     * @notice Emitted when blacklist an account
     * @param account The account
     */
    event Blacklist(address indexed account);

    /**
     * @notice Emitted when remove an account from blacklist
     * @param account The account
     */
    event UnBlacklist(address indexed account);

    error ZERO_ADDRESS();
    error ZERO_AMOUNT();
    error INSUFFICIENT_BALANCE();
    error TOTAL_SDAI_OUT_OF_SYNC();
    error INVALID_TOKEN_ID();
    error BLACKLISTED_ACCOUNT();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Throws if argument account is blacklisted
     * @param _account The address to check
     */
    modifier notBlacklisted(address _account) {
        if (blacklisted[_account]) {
            revert BLACKLISTED_ACCOUNT();
        }
        _;
    }

    /**
     * @dev Constructor function for the YBUSD contract.
     * @param _sDai The address of the ISavingsDai contract.
     * @param _usdc The address of the USDC token contract.
     * @param _usdt The address of the USDT token contract.
     * @param _curve3Pool The address of the Curve3Pool contract.
     * @param _name The name of the ybUSD token.
     * @param _symbol The symbol of the ybUSD token.
     */
    function initialize(
        address _dai,
        address _sDai,
        address _usdc,
        address _usdt,
        address _curve3Pool,
        string memory _name,
        string memory _symbol
    ) public initializer {
        if (
            address(_dai) == address(0) ||
            address(_sDai) == address(0) ||
            address(_usdc) == address(0) ||
            address(_usdt) == address(0) ||
            address(_curve3Pool) == address(0)
        ) {
            revert ZERO_ADDRESS();
        }
        dai = IERC20(_dai);
        sDai = ISavingsDai(_sDai);
        usdc = IERC20(_usdc);
        usdt = IERC20(_usdt);
        Curve3Pool = ICurve3Pool(_curve3Pool);
        // Approve sDai to spend dai. This means we fully trust sDai. Should revoke if pausing this contract. re-approve if unpausing.
        dai.approve(address(sDai), type(uint256).max);
        // Approve Curve3Pool to spend usdc, and usdt. This means we fully trust Curve3Pool. Should revoke if pausing this contract. re-approve if unpausing.
        ITetherToken(_usdt).approve(address(Curve3Pool), type(uint256).max);
        usdc.approve(address(Curve3Pool), type(uint256).max);

        __UUPSUpgradeable_init();
        __ERC20_init(_name, _symbol);
        __ERC20Permit_init(_name);
        __AccessControlEnumerable_init();
        __Pausable_init();
        __ReentrancyGuard_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @dev Checks if account is blacklisted
     * @param _account The address to check
     */
    function isBlacklisted(address _account) external view returns (bool) {
        return blacklisted[_account];
    }

    /**
     * @dev Internal function to check if the total sDai balance is in sync with the contract's balance.
     * @dev Throws an error if the total sDai balance is not in sync.
     */
    function checkTotalSDaiInSync() internal view {
        if (totalSDai > sDai.balanceOf(address(this)))
            revert TOTAL_SDAI_OUT_OF_SYNC();
    }

    /**
     * @dev Allows users to deposit DAI tokens and receive ybUSD tokens in return.
     * @param _amount The amount of DAI tokens to deposit.
     */
    function deposit(
        uint256 _amount
    ) external whenNotPaused notBlacklisted(msg.sender) nonReentrant returns (uint256) {
        checkTotalSDaiInSync();
        if (_amount == 0) revert ZERO_AMOUNT();
        if (dai.balanceOf(_msgSender()) < _amount)
            revert INSUFFICIENT_BALANCE();
        dai.safeTransferFrom(_msgSender(), address(this), _amount);
        return _deposit(_amount);
    }

    /**
     *
     * @param j 1 for USDC, 2 for USDT
     * @param dx input amount
     * @param min_dy minimum output amount
     */

    function swapAndDeposit(
        uint128 j,
        uint256 dx,
        uint256 min_dy
    ) external whenNotPaused notBlacklisted(msg.sender) nonReentrant returns (uint256) {
        checkTotalSDaiInSync();
        if (dx == 0 || min_dy == 0) revert ZERO_AMOUNT();
        uint256 daiBalanceBefore = dai.balanceOf(address(this));
        if (j == 1) {
            if (usdc.balanceOf(_msgSender()) < dx)
                revert INSUFFICIENT_BALANCE();
            usdc.safeTransferFrom(_msgSender(), address(this), dx);
            Curve3Pool.exchange(1, 0, dx, min_dy);
        } else if (j == 2) {
            if (usdt.balanceOf(_msgSender()) < dx)
                revert INSUFFICIENT_BALANCE();
            usdt.safeTransferFrom(_msgSender(), address(this), dx);
            Curve3Pool.exchange(2, 0, dx, min_dy);
        } else {
            revert INVALID_TOKEN_ID();
        }
        uint256 daiBalanceAfter = dai.balanceOf(address(this));

        return _deposit(daiBalanceAfter - daiBalanceBefore);
    }

    function _deposit(uint256 _amount) internal returns (uint256) {
        uint256 sDaiAmount = sDai.deposit(_amount, address(this));
        totalSDai += sDaiAmount;
        _mint(_msgSender(), sDaiAmount);
        emit Deposit(_msgSender(), _amount, sDaiAmount);
        return sDaiAmount;
    }

    /**
     * @dev Allows users to redeem ybUSD tokens and receive DAI tokens in return.
     * @param _amount The amount of ybUSD tokens to redeem.
     */
    function redeem(
        uint256 _amount
    ) external whenNotPaused notBlacklisted(msg.sender) nonReentrant returns (uint256) {
        checkTotalSDaiInSync();
        if (_amount == 0) revert ZERO_AMOUNT();
        if (this.balanceOf(_msgSender()) < _amount)
            revert INSUFFICIENT_BALANCE();
        _burn(_msgSender(), _amount);
        uint256 daiAmount = sDai.redeem(_amount, _msgSender(), address(this));
        totalSDai -= _amount;
        emit Redeem(_msgSender(), daiAmount, _amount);
        return daiAmount;
    }

    /**
     * @dev Converts the specified amount of sDai tokens to DAI tokens.
     * @param _sDaiAmount The amount of sDai tokens to convert.
     * @return The equivalent amount of DAI tokens.
     */
    function convertToAssets(
        uint256 _sDaiAmount
    ) public view returns (uint256) {
        return sDai.convertToAssets(_sDaiAmount);
    }

    /**
     * @dev Converts the specified amount of DAI tokens to sDai tokens.
     * @param _daiAmount The amount of DAI tokens to convert.
     * @return The equivalent amount of sDai tokens.
     */
    function convertToShares(
        uint256 _daiAmount
    ) external view returns (uint256) {
        return sDai.convertToShares(_daiAmount);
    }

    /**
     * @dev Returns the total USD value of the contract's sDai balance.
     * @return The total USD value in DAI tokens.
     */
    function totalUsdValue() external view returns (uint256) {
        return convertToAssets(totalSDai);
    }

    /**
     * @dev Toggles the pause state of the contract. If the contract is paused, it will be unpaused and vice versa.
     * This can only be called by accounts with the `DEFAULT_ADMIN_ROLE`, allowing for controlled pausing and
     * unpausing of contract operations. This function is useful for contract maintenance, upgrades, or in response
     * to security incidents.
     */
    function togglePause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (paused()) {
            //When the contract is unpaused, re-enable SDai and Curve3pool to spend this contract's Dai, USDC, or USDT.
            dai.approve(address(sDai), type(uint256).max);
            ITetherToken(address(usdt)).approve(address(Curve3Pool), type(uint256).max);
            usdc.approve(address(Curve3Pool), type(uint256).max);
            _unpause();
        } else {
            //When the contract is paused, not even SDai nor Curve3pool can spend this contract's Dai, USDC, or USDT.
            dai.approve(address(sDai), 0);
            ITetherToken(address(usdt)).approve(address(Curve3Pool), 0);
            usdc.approve(address(Curve3Pool), 0);
            _pause();
        }
    }

    /**
     * @dev Adds account to blacklist
     * @param _account The address to blacklist
     */
    function blacklist(address _account) external onlyRole(DEFAULT_ADMIN_ROLE) {
        blacklisted[_account] = true;
        emit Blacklist(_account);
    }

    /**
     * @dev Removes account from blacklist
     * @param _account The address to remove from the blacklist
     */
    function unBlacklist(
        address _account
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        blacklisted[_account] = false;
        emit UnBlacklist(_account);
    }

    // ############################ Rewrite Some Functions due to blacklist ############################

    /**
     * `transfer` from ERC20Upgradeable with whenNotPaused and notBlacklisted modifiers
     */
    function transfer(
        address to,
        uint256 value
    )
        public
        override
        whenNotPaused
        notBlacklisted(msg.sender)
        notBlacklisted(to)
        returns (bool)
    {
        return ERC20Upgradeable.transfer(to, value);
    }

    /**
     * `approve` from ERC20Upgradeable with whenNotPaused and notBlacklisted modifiers
     */
    function approve(
        address spender,
        uint256 value
    )
        public
        override
        whenNotPaused
        notBlacklisted(msg.sender)
        notBlacklisted(spender)
        returns (bool)
    {
        return ERC20Upgradeable.approve(spender, value);
    }

    /**
     * `transferFrom` from ERC20Upgradeable with whenNotPaused and notBlacklisted modifiers
     */
    function transferFrom(
        address from,
        address to,
        uint256 value
    )
        public
        override
        whenNotPaused
        notBlacklisted(msg.sender)
        notBlacklisted(from)
        notBlacklisted(to)
        returns (bool)
    {
        return ERC20Upgradeable.transferFrom(from, to, value);
    }

    /**
     * `permit` from ERC20PermitUpgradeable with whenNotPaused and notBlacklisted modifiers
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        public
        override
        whenNotPaused
        notBlacklisted(owner)
        notBlacklisted(spender)
    {
        ERC20PermitUpgradeable.permit(owner, spender, value, deadline, v, r, s);
    }

    /**
     * @dev Required by UUPSUpgradeable
     */
    function _authorizeUpgrade(
        address
    ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}

