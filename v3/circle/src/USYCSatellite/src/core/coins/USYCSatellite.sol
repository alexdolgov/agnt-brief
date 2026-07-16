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
import {IAuthority} from "entitlements/src/interfaces/IAuthority.sol";

// Roles Enum
import "entitlements/src/config/enums.sol";

// errors
import "../../config/errors.sol";

/**
 * @title   USYCSatellite
 * @author  dsshap
 * @dev     Represent the shares of the Short Duration Yield Fund
 *             The value of the token should always be positive.
 */
contract USYCSatellite is ERC20, OwnableUpgradeable, UUPSUpgradeable {
    using FixedPointMathLib for uint256;
    using SafeERC20 for IERC20Metadata;

    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event MinterConfigured(address minter, uint256 amount);

    /*///////////////////////////////////////////////////////////////
                         Immutables
    //////////////////////////////////////////////////////////////*/

    /// @notice authority to check entitlements
    IAuthority public immutable authority;

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/

    uint256 internal _decimals;

    uint256 internal immutable _initialChainId;

    bytes32 internal _initialDomainSeparator;

    /// @notice the addresses that are able to mint new tokens
    mapping(address => uint256) public minterAllowance;

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _authority) ERC20() initializer {
        if (_authority == address(0)) revert BadAddress();

        authority = IAuthority(_authority);

        _initialChainId = block.chainid;
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/

    function initialize(string memory _name, string memory _symbol, uint8 _dec, address _owner) external initializer {
        // solhint-disable-next-line reason-string
        if (_owner == address(0)) revert BadAddress();

        _transferOwnership(_owner);

        name = _name;
        symbol = _symbol;
        _decimals = _dec;

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
                        ERC20 Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the number of decimals
     * @return The number of decimals.
     */
    function decimals() public view returns (uint8) {
        return uint8(_decimals);
    }

    /**
     * @notice Transfers tokens to a recipient
     * @param _to The recipient address
     * @param _amount The amount of tokens to transfer
     * @return True if the transfer was successful
     */
    function transfer(address _to, uint256 _amount) public virtual override returns (bool) {
        _checkPermissions(msg.sender);
        _checkCanReceiveFrom(msg.sender, _to);

        return super.transfer(_to, _amount);
    }

    /**
     * @notice Transfers tokens from a sender to a recipient
     * @dev The caller must have the allowance for the sender
     * @param _from The sender address
     * @param _to The recipient address
     * @param _amount The amount of tokens to transfer
     * @return True if the transfer was successful
     */
    function transferFrom(address _from, address _to, uint256 _amount) public virtual override returns (bool) {
        if (
            authority.doesUserHaveRole(tx.origin, Role.System_FundAdmin)
                && (msg.sender == tx.origin || authority.getUserRoles(msg.sender) != bytes32(0))
        ) {
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

    /*///////////////////////////////////////////////////////////////
                            Interchain Token Service
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice mints tokens for recipient
     * @param _to The address to mint to
     * @param _amount The amount to mint
     */
    function mint(address _to, uint256 _amount) external returns (bool) {
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
    function burn(uint256 _amount) external {
        _checkPermissions(msg.sender);

        _burn(msg.sender, _amount);
    }

    /**
     * @notice burns for sender
     * @param _from The address to burn from
     * @param _amount The amount to burn
     */
    function burn(address _from, uint256 _amount) external {
        if (minterAllowance[msg.sender] == 0) revert NotPermissioned();

        // checking that from still has permissions to hold/transfer token
        // note: this is to prevent burning tokens of users that may have lost initial permissions after minting
        _checkCanReceive(_from);

        _burn(_from, _amount);
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
        if (!authority.doesUserHaveRole(msg.sender, Role.System_FundAdmin)) revert NotPermissioned();

        if (_minter == address(0)) revert BadAddress();

        emit MinterConfigured(_minter, _amount);

        minterAllowance[_minter] = _amount;
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
