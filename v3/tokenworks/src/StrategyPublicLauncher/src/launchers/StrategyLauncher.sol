// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {Pausable} from "../utils/Pausable.sol";
import {IERC165} from "@openzeppelin/contracts/interfaces/IERC165.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";

import {Initializable} from "solady/utils/Initializable.sol";
import {UUPSUpgradeable} from "solady/utils/UUPSUpgradeable.sol";

struct StrategyLauncherStorage {
    mapping(address => address) operators;
    address nftFactory;
    address erc20Factory;
    address erc1155Factory;
    address recursiveFactory;
    address recipient;
}

library LibStrategyLauncherStorage {
    bytes32 internal constant STORAGE_POSITION =
        keccak256("strategy.launcher.storage");

    function getStorage()
        internal
        pure
        returns (StrategyLauncherStorage storage ds)
    {
        bytes32 position = STORAGE_POSITION;
        assembly {
            ds.slot := position
        }
    }
}

/// @title StrategyLauncher - A base contract to create Strategies Launchers
/// @author TokenWorks (https://token.works/)
contract StrategyLauncher is
    Initializable,
    UUPSUpgradeable,
    Ownable,
    ReentrancyGuard,
    Pausable
{
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™                ™™™™™™™™™™™                ™™™™™™™™™™™ */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™               ™™™™™™™™™™™™™              ™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™              ™™™™™™™™™™™™™              ™™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™            ™™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /*                ™™™™™™™™™™™            ™™™™™™™™™™™           ™™™™™™™™™™™™™™™           ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™        ™™™™™™™™™™™™™™™™™™™        ™™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™™       ™™™™™™™™™ ™™™™™™™™™       ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™™ ™™™™™™™™™™      ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™   ™™™™™™™™™      ™™™™™™™™™™       */
    /*                ™™™™™™™™™™™                ™™™™™™™™™™    ™™™™™™™™™™    ™™™™™™™™™    ™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™   ™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™  ™™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™         */
    /*                ™™™™™™™™™™™                  ™™™™™™™™™™™™™™™™™™™™       ™™™™™™™™™™™™™™™™™™™™          */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                    ™™™™™™™™™™™™™™™™           ™™™™™™™™™™™™™™™™            */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                      ™™™™™™™™™™™™               ™™™™™™™™™™™™              */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTANTS                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Emitted when the contract implementation is upgraded
    event ContractUpgraded(
        address indexed oldImplementation,
        address indexed newImplementation
    );

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice triggered when a wrong address tries to take the bid
    error NotValidOperator();
    /// @notice triggered when a param is invalid
    error InvalidParam(string paramName);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    MODIFIERS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    modifier onlyValidOperator(address target, address operator) {
        _requireValidOperator(target, operator);

        _;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CONSTRUCTOR                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    constructor() {
        _disableInitializers();
    }

    function __StrategyLauncher_init(
        address _nftFactory,
        address _erc20Factory,
        address _erc1155Factory,
        address _recursiveFactory,
        address _recipient
    ) internal {
        if (_nftFactory == address(0)) {
            revert InvalidParam("nftFactory");
        }
        if (_erc20Factory == address(0)) {
            revert InvalidParam("erc20Factory");
        }
        if (_erc1155Factory == address(0)) {
            revert InvalidParam("erc1155Factory");
        }
        if (_recursiveFactory == address(0)) {
            revert InvalidParam("recursiveFactory");
        }
        if (_recipient == address(0)) {
            revert InvalidParam("recipient");
        }

        _initializeOwner(msg.sender);

        StrategyLauncherStorage storage s = LibStrategyLauncherStorage
            .getStorage();

        s.nftFactory = _nftFactory;
        s.erc20Factory = _erc20Factory;
        s.erc1155Factory = _erc1155Factory;
        s.recursiveFactory = _recursiveFactory;
        s.recipient = _recipient;

        // state must be paused when deploying
        _pause();
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     MODIFIERS                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        GETTERS	                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    function nftFactory() public view returns (address) {
        return LibStrategyLauncherStorage.getStorage().nftFactory;
    }

    function erc20Factory() public view returns (address) {
        return LibStrategyLauncherStorage.getStorage().erc20Factory;
    }

    function erc1155Factory() public view returns (address) {
        return LibStrategyLauncherStorage.getStorage().erc1155Factory;
    }

    function recursiveFactory() public view returns (address) {
        return LibStrategyLauncherStorage.getStorage().recursiveFactory;
    }

    function recipient() public view returns (address) {
        return LibStrategyLauncherStorage.getStorage().recipient;
    }

    /// @notice Checks if {account} is a valid operator for {target}
    /// @param target the contract
    /// @param account the account
    function isOperator(
        address target,
        address account
    ) public view returns (bool) {
        return _isValidOperator(target, account);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        ACTIONS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   ADMIN FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Authorizes contract upgrades (UUPS pattern)
    /// @param newImplementation Address of the new implementation contract
    /// @dev Only callable by contract owner, validates implementation is a contract
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {
        require(newImplementation != address(0), "Invalid implementation");
        require(
            newImplementation.code.length > 0,
            "Implementation must be a contract"
        );
        emit ContractUpgraded(address(this), newImplementation);
    }

    /// @notice Set the address allowed to bid for {target}
    /// @param target the contract the {operator} can operate on
    /// @param operator the account
    function setOperator(address target, address operator) public onlyOwner {
        LibStrategyLauncherStorage.getStorage().operators[target] = operator;
    }

    /// @notice Sets the {nftFactory} address
    /// @param newFactory the new factory address
    function setNFTFactory(address newFactory) public onlyOwner {
        if (newFactory == address(0)) {
            revert InvalidParam("nftFactory");
        }

        LibStrategyLauncherStorage.getStorage().nftFactory = newFactory;
    }

    /// @notice Sets the {erc20Factory} address
    /// @param newFactory the new factory address
    function setERC20Factory(address newFactory) public onlyOwner {
        if (newFactory == address(0)) {
            revert InvalidParam("erc20Factory");
        }

        LibStrategyLauncherStorage.getStorage().erc20Factory = newFactory;
    }

    /// @notice Sets the {erc1155Factory} address
    /// @param newFactory the new factory address
    function setERC1155Factory(address newFactory) public onlyOwner {
        if (newFactory == address(0)) {
            revert InvalidParam("erc1155Factory");
        }

        LibStrategyLauncherStorage.getStorage().erc1155Factory = newFactory;
    }

    /// @notice Sets the {recipient} address
    /// @param newRecipient the new recipient address
    function setRecipient(address newRecipient) public onlyOwner {
        if (newRecipient == address(0)) {
            revert InvalidParam("recipient");
        }

        LibStrategyLauncherStorage.getStorage().recipient = newRecipient;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Checks if an account is operator or owner or admin on a contract
    /// @param target the contract to test on
    /// @param operator the account to check
    /// @return if the account is any of those
    function _isValidOperator(
        address target,
        address operator
    ) internal view returns (bool) {
        if (
            LibStrategyLauncherStorage.getStorage().operators[target] !=
            operator
        ) {
            if (!_isOwner(target, operator)) {
                // @TODO: is AccessControl check needed?
                if (!_isAdmin(target, operator)) {
                    return false;
                }
            }
        }

        return true;
    }

    /// @notice Checks if an account is owner of a contract
    /// @param target the contract to test on
    /// @param operator the account to check
    /// @return if operator is owner
    function _isOwner(
        address target,
        address operator
    ) internal view returns (bool) {
        // call target.owner()  and check if owner
        try Ownable(target).owner() returns (address _owner) {
            return _owner == operator;
        } catch {}
        return false;
    }

    /// @notice Checks if an account has the AccessControl.DEFAULT_ADMIN_ROLE on a contract
    /// @param target the contract to test on
    /// @param operator the account to check
    /// @return if operator has the role
    function _isAdmin(
        address target,
        address operator
    ) internal view returns (bool) {
        try AccessControl(target).hasRole(0x00, operator) returns (
            bool hasRole
        ) {
            return hasRole;
        } catch {}
        return false;
    }

    /// @notice Validates the bid parameters
    /// @param name the name to validate
    /// @param ticker the ticker to validate
    /// @dev reverts if parameters are wrong
    function _validateParams(
        string memory name,
        string memory ticker
    ) internal pure {
        bytes memory tickerBytes = bytes(ticker);
        if (tickerBytes.length < 3) {
            revert InvalidParam("ticker");
        }

        // Check that the last 3 bytes correspond to "STR"
        if (
            tickerBytes[tickerBytes.length - 3] != 0x53 || // 'S'
            tickerBytes[tickerBytes.length - 2] != 0x54 || // 'T'
            tickerBytes[tickerBytes.length - 1] != 0x52 // 'R'
        ) {
            revert InvalidParam("ticker");
        }
    }

    function _isERC721(address target) internal view returns (bool) {
        try IERC165(target).supportsInterface(0x80ac58cd) returns (
            bool status
        ) {
            return status;
        } catch {}
        return false;
    }

    function _isERC1155(address target) internal view returns (bool) {
        try IERC165(target).supportsInterface(0xd9b67a26) returns (
            bool status
        ) {
            return status;
        } catch {}
        return false;
    }

    function _requireValidOperator(
        address target,
        address operator
    ) internal view {
        if (!_isValidOperator(target, operator)) {
            revert NotValidOperator();
        }
    }
}
