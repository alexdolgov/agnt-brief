// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// imported contracts and libraries
import {ERC20} from "./ERC20.sol";
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {OwnableUpgradeable} from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "openzeppelin/proxy/utils/UUPSUpgradeable.sol";

// interfaces
import {IERC20Metadata} from "openzeppelin/token/ERC20/extensions/IERC20Metadata.sol";
import {IMintableBurnable} from "../../interfaces/IMintableBurnable.sol";
import {YieldTokenTellerV2 as Teller} from "../tellers/YieldTokenTellerV2.sol";
import {IAuthority} from "entitlements/src/interfaces/IAuthority.sol";

// Roles Enum
import "entitlements/src/config/enums.sol";

// constants
import "../../config/constants.sol";

// errors
import "../../config/errors.sol";

/**
 * @title   ShortDurationYieldCoin
 * @author  dsshap
 * @dev     Represent the shares of the Short Duration Yield Fund
 *             The value of the token should always be positive.
 */
contract ShortDurationYieldCoin is ERC20, IMintableBurnable, OwnableUpgradeable, UUPSUpgradeable {
    using FixedPointMathLib for uint256;
    using SafeERC20 for IERC20Metadata;

    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event MinterConfigured(address minter, uint256 amount);

    event FeeRecipientSet(address recipient, address newRecipient);

    event ManagementFeeSet(uint256 managementFee, uint256 newManagementFee);

    event OracleSet(address oracle, address newOracle);

    event TellerSet(address teller, address newTeller);

    event UnderlyingSet(address token);

    event FeeProcessed(address indexed recipient, uint256 fee);

    event Deposit(address indexed from, uint256 amount);

    event Withdrawal(address indexed to, uint256 amount);

    event TradeToFiat(address indexed recipient, address token, uint256 amount);

    /*///////////////////////////////////////////////////////////////
                         Immutables
    //////////////////////////////////////////////////////////////*/

    /// @notice authority to check entitlements
    IAuthority public immutable authority;

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/

    /// @notice ***DEPRECATED*** allowlist manager to check permissions
    address private _a;

    /// @notice ***DEPRECATED*** the address that is able to mint new tokens
    address private _m;

    /// @notice ***DEPRECATED*** the address that receives the management fee
    address private _f;

    /// @notice the address of the teller contract
    Teller public teller;

    /// @notice ***DEPRECATED*** management fee charged on accrued interest
    uint256 private mF;

    /// @notice ***DEPRECATED*** previously recorded total interest accrued
    uint256 private _cti;

    /*///////////////////////////////////////////////////////////////
                         State Variables V2
    //////////////////////////////////////////////////////////////*/

    IERC20Metadata public underlying;

    /*///////////////////////////////////////////////////////////////
                         State Variables V3
    //////////////////////////////////////////////////////////////*/

    /// @notice the addresses that are able to mint new tokens
    mapping(address => uint256) public minterAllowance;

    /*///////////////////////////////////////////////////////////////
                         State Variables V4
    //////////////////////////////////////////////////////////////*/

    uint256 internal _decimals;

    uint256 internal immutable _initialChainId;

    bytes32 internal _initialDomainSeparator;

    /// @notice ***DEPRECATED*** previously underlying token decimals
    uint256 internal _uD;

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _authority) ERC20() initializer {
        // solhint-disable-next-line reason-string
        if (_authority == address(0)) revert();

        authority = IAuthority(_authority);

        _initialChainId = block.chainid;
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/

    function initialize(
        string memory _name,
        string memory _symbol,
        uint8 _dec,
        address _owner,
        address _minter,
        address _teller,
        address _underlying
    ) external initializer {
        // solhint-disable-next-line reason-string
        if (_owner == address(0)) revert();
        // solhint-disable-next-line reason-string
        if (_minter == address(0)) revert();
        // solhint-disable-next-line reason-string
        if (_teller == address(0)) revert();
        // solhint-disable-next-line reason-string
        if (_underlying == address(0)) revert();

        _transferOwnership(_owner);

        name = _name;
        symbol = _symbol;
        _decimals = _dec;

        minterAllowance[_minter] = type(uint256).max;
        teller = Teller(_teller);
        underlying = IERC20Metadata(_underlying);

        _initialDomainSeparator = _computeDomainSeparator();
    }

    /*///////////////////////////////////////////////////////////////
                    Override Upgrade Permission
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Upgradable by the owner.
     *
     */
    function _authorizeUpgrade(address /*newImplementation*/ ) internal virtual override {
        _checkOwner();
    }

    /*///////////////////////////////////////////////////////////////
                        Management Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Sets the minter role and the amount of tokens the minter is allowed to mint
     * @param _minter is the address of the new minter
     * @param _amount is the amount of tokens the minter is allowed to mint
     */
    function setMinterAllowance(address _minter, uint256 _amount) external {
        _assertFundAdmin();

        if (_minter == address(0)) revert BadAddress();

        emit MinterConfigured(_minter, _amount);

        minterAllowance[_minter] = _amount;
    }

    /**
     * @notice The management fee for the token
     */
    function managementFee() external pure returns (uint256) {
        return 0;
    }

    /**
     * @notice Sets the teller
     * @dev used to deposit and withdraw
     * @param _teller is the address
     */
    function setTeller(address _teller) external {
        _assertFundAdmin();

        if (_teller == address(0)) revert BadAddress();

        teller = Teller(_teller);

        emit TellerSet(address(teller), _teller);
    }

    /**
     * @notice Sets underlying token
     * @param _token is the address of token
     */
    function setUnderlying(address _token) external {
        _assertFundAdmin();

        if (_token == address(0)) revert BadAddress();

        emit UnderlyingSet(_token);

        underlying = IERC20Metadata(_token);
    }

    /*///////////////////////////////////////////////////////////////
                        ERC20 Functions
    //////////////////////////////////////////////////////////////*/

    function decimals() public view returns (uint8) {
        return uint8(_decimals);
    }

    function transfer(address _to, uint256 _amount) public virtual override returns (bool) {
        _checkPermissions(msg.sender);
        _checkCanReceiveFrom(msg.sender, _to);

        return super.transfer(_to, _amount);
    }

    function transferFrom(address _from, address _to, uint256 _amount) public virtual override returns (bool) {
        if (_isFundAdminOrigin()) {
            balanceOf[_from] -= _amount;

            // Cannot overflow because the sum of all user
            // balances can't exceed the max uint256 value.
            unchecked {
                balanceOf[_to] += _amount;
            }

            emit Transfer(_from, _to, _amount);

            return true;
        } else {
            _checkPermissions(msg.sender);
            _checkCanReceiveFrom(_from, _to);

            return super.transferFrom(_from, _to, _amount);
        }
    }

    function mint(address _to, uint256 _amount) external override returns (bool) {
        uint256 allowed = minterAllowance[msg.sender]; // Saves gas for limited approvals.
        if (allowed != type(uint256).max) minterAllowance[msg.sender] = allowed - _amount;

        // checking that recipient has permissions to hold/transfer token
        _checkCanReceive(_to);

        _mint(_to, _amount);

        return true;
    }

    /**
     * @notice burns for sender
     * @param _amount The amount to burn
     */
    function burn(uint256 _amount) external override {
        _checkPermissions(msg.sender);

        _burn(msg.sender, _amount);
    }

    /**
     * @notice burns tokens for a user
     * @dev only callable by minter
     * @param _from The address to burn tokens for
     * @param _amount The amount of tokens to burn
     */
    function burn(address _from, uint256 _amount) public {
        if (minterAllowance[msg.sender] == 0) revert NoAccess();

        _burn(_from, _amount);
    }

    /**
     * @notice burns tokens for a user
     * @dev only callable by minter
     * @param _from The address to burn tokens for
     * @param _amount The amount of tokens to burn
     */
    function burnFor(address _from, uint256 _amount) external {
        burn(_from, _amount);
    }

    /*///////////////////////////////////////////////////////////////
                    Stable Coin Deposit Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deposits a stable coin to mint SDYC to a recipient
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of stable coin to deposit
     */
    function _depositFor(address _recipient, uint256 _amount) internal returns (uint256 amount) {
        if (_amount == 0) revert BadAmount();
        if (address(underlying) == address(0)) revert NoUnderlying();

        underlying.safeTransferFrom(msg.sender, address(this), _amount);

        (amount,,) = teller.buyPreview(_amount);
        if (amount == 0) revert BadAmount();
        _mint(_recipient, amount);

        emit Deposit(msg.sender, _amount);
    }

    /**
     * @notice Deposits a stable coin to mint SDYC
     * @param _amount is the amount of stable coin to deposit
     */
    function deposit(uint256 _amount) external returns (uint256) {
        _checkPermissions(msg.sender);

        return _depositFor(msg.sender, _amount);
    }

    /**
     * @notice Deposits a stable coin to mint SDYC to a recipient
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of stable coin to deposit
     */
    function depositFor(address _recipient, uint256 _amount) external returns (uint256) {
        _checkPermissions(msg.sender);
        _checkCanReceive(_recipient);

        return _depositFor(_recipient, _amount);
    }

    /*///////////////////////////////////////////////////////////////
                    Stable Coin Withdraw Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Withdraws a stable coin by burning SDYC and sends to a recipient
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of SDYC to burn
     */
    function _withdrawTo(address _recipient, uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s)
        internal
        returns (uint256 amount)
    {
        if (_amount == 0) revert BadAmount();
        // Not checking _recipient permissions because it could be a LP
        _assertWithdrawSignature(_recipient, _amount, _v, _r, _s);

        if (address(underlying) == address(0)) revert NoUnderlying();

        (uint256 payout, uint256 fee, int256 price) = teller.sellPreview(_amount);
        if (price == 0) revert BadPrice();

        _burn(msg.sender, _amount);

        amount = payout + fee; // not taking fees on withdraw
        underlying.safeTransfer(_recipient, amount);

        emit Withdrawal(_recipient, amount);
    }

    /**
     * @notice Withdraws a stable coin by burning SDYC
     * @param _amount is the amount of SDYC to burn
     */
    function withdraw(uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s) external returns (uint256) {
        _checkPermissions(msg.sender);

        return _withdrawTo(msg.sender, _amount, _v, _r, _s);
    }

    /**
     * @notice Withdraws a stable coin by burning SDYC and sends to a recipient
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of SDYC to burn
     */
    function withdrawTo(address _recipient, uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s) external returns (uint256) {
        _checkPermissions(msg.sender);
        _checkCanReceive(_recipient);

        return _withdrawTo(_recipient, _amount, _v, _r, _s);
    }

    /**
     * @notice Sends token to be converted to fiat
     * @param _token address of token
     * @param _amount is the amount
     * @param _recipient the destination
     */
    function tradeToFiat(address _token, uint256 _amount, address _recipient) external virtual {
        _assertFundAdmin();

        if (!authority.doesUserHaveRole(_recipient, Role.LiquidityProvider_Spot)) revert NotPermissioned();

        emit TradeToFiat(_recipient, _token, _amount);

        IERC20Metadata(_token).safeTransfer(_recipient, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function DOMAIN_SEPARATOR() public view override returns (bytes32) {
        return block.chainid == _initialChainId ? _initialDomainSeparator : _computeDomainSeparator();
    }

    /*///////////////////////////////////////////////////////////////
                            Internal Functions
    //////////////////////////////////////////////////////////////*/

    function _assertWithdrawSignature(address _to, uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s) internal {
        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(
                            abi.encode(
                                keccak256("Withdraw(address to,uint256 amount,uint256 nonce)"), _to, _amount, nonces[_to]++
                            )
                        )
                    )
                ),
                _v,
                _r,
                _s
            );

            if (recoveredAddress == address(0) || recoveredAddress != owner()) revert InvalidSignature();
        }
    }

    function _isFundAdmin() internal view virtual returns (bool) {
        return authority.doesUserHaveRole(msg.sender, Role.System_FundAdmin);
    }

    function _isFundAdminOrigin() internal view virtual returns (bool) {
        // checks if origin is fund admin and if the msg.sender is a known good address
        // currently only used on transferFrom
        return authority.doesUserHaveRole(tx.origin, Role.System_FundAdmin)
            && (msg.sender == tx.origin || authority.getUserRoles(msg.sender) != bytes32(0));
    }

    function _assertFundAdmin() internal view virtual {
        if (!_isFundAdmin()) revert NotPermissioned();
    }

    function _checkPermissions(address _address) internal view {
        if (!authority.canCall(_address, address(this), msg.sig)) revert NotPermissioned();
    }

    function _checkCanReceive(address _address) internal view {
        if (!authority.canCall(_address, address(this), this.transfer.selector)) revert NotPermissioned();
    }

    function _checkCanReceiveFrom(address _from, address _to) internal view {
        if (msg.sender != _from) _checkCanReceive(_from);
        _checkCanReceive(_to);

        bytes32 fromRoles = authority.getUserRoles(_from);

        if (_doesHaveRole(fromRoles, Role.Investor_SDYFInternational)) {
            // can only transfer to other SDYFInternational investors
            bytes32 toRoles = authority.getUserRoles(_to);
            if (_doesHaveRole(toRoles, Role.Investor_MFFeederDomestic)) revert NotPermissioned();
            if (_doesHaveRole(toRoles, Role.Investor_MFFeederInternational)) revert NotPermissioned();
            if (_doesHaveRole(toRoles, Role.Investor_LOFDomestic)) revert NotPermissioned();
        } else if (
            _doesHaveRole(fromRoles, Role.Investor_MFFeederDomestic)
                || _doesHaveRole(fromRoles, Role.Investor_MFFeederInternational)
                || _doesHaveRole(fromRoles, Role.Investor_LOFDomestic)
        ) {
            // cannot transfer to any other investors
            bytes32 toRoles = authority.getUserRoles(_to);
            if (_doesHaveRole(toRoles, Role.Investor_MFFeederDomestic)) revert NotPermissioned();
            if (_doesHaveRole(toRoles, Role.Investor_MFFeederInternational)) revert NotPermissioned();
            if (_doesHaveRole(toRoles, Role.Investor_SDYFInternational)) revert NotPermissioned();
            if (_doesHaveRole(toRoles, Role.Investor_LOFDomestic)) revert NotPermissioned();
        }
    }

    function _doesHaveRole(bytes32 userRoles, Role role) internal pure returns (bool) {
        return (uint256(userRoles) >> uint8(role)) & 1 != 0;
    }
}
