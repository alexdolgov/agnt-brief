// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {EnumerableSet} from "openzeppelin/utils/structs/EnumerableSet.sol";
import {EnumerableMap} from "openzeppelin/utils/structs/EnumerableMap.sol";
import {IERC20, SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardUpgradeable} from "openzeppelin-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {AccessControlEnumerableUpgradeable} from "openzeppelin-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";

import {IDistributeYield} from "../interfaces/IDistributeYield.sol";
import {IAllocateYield} from "../interfaces/IAllocate.sol";
import {ProtocolEvents} from "../interfaces/ProtocolEvents.sol";
import {IPauser} from "../interfaces/IPauser.sol";

contract DistributeYieldERC20Upgradeable is IDistributeYield, ProtocolEvents, AccessControlEnumerableUpgradeable, ReentrancyGuardUpgradeable  {
    // errors
    error InvalidInitialize();
    error LengthDiffer();
    error RoleNotSet();
    error Paused();
    error RepeatSetElement();
    error ClaimWindowFinished();

    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableMap for EnumerableMap.AddressToUintMap;

    // -------------- UPGRADE -------------- //
    /// @custom:storage-location erc7201:storage.DistributeYieldERC20
    struct DistributeYieldERC20Storage {
        // token whitelist, prevent approval any call
        mapping(uint256 => address) allowedTokens;
        // yield contracts
        mapping( uint256 => address ) yields;
        // yield total claimed
        mapping( uint256 => uint256 ) totalClaimed;
        // yield user claimed
        mapping( uint256 => EnumerableMap.AddressToUintMap ) userClaimed;
        // sponsor addresses, seperated by id
        mapping( uint256 => address ) sponsors;
        // endTimes, seperated by id
        mapping( uint256 => uint256 ) endTimes;
        // pauser
        IPauser pauser;
    }

    // keccak256(abi.encode(uint256(keccak256("storage.DistributeYieldERC20")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant DistributeYieldERC20Location = 0x743e9880e7a0fd6dfeba4b82268b5d72aa6caab19d1eb7f12fb1e5efdbd0ff00;

    function _getDistributeYieldERC20Storage() internal pure returns (DistributeYieldERC20Storage storage $) {
        assembly {
            $.slot := DistributeYieldERC20Location
        }
    }

    /**
     * @dev Sets the sender as the initial owner, the beneficiary as the pending owner, the start timestamp and the
     * vesting duration of the vesting wallet.
     */
    function __DistributeYieldERC20_init(address _pauser, uint256[] memory uids, address[] memory yields, address[] memory tokens, address[] memory sponsors, uint256[] memory endTimes) internal onlyInitializing {
        __AccessControlEnumerable_init();
        __ReentrancyGuard_init();
        __DistributeYieldERC20_init_unchained(_pauser, uids, yields, tokens, sponsors, endTimes);
    }

    function __DistributeYieldERC20_init_unchained(address _pauser, uint256[] memory uids, address[] memory yields, address[] memory tokens, address[] memory sponsors, uint256[] memory endTimes) internal onlyInitializing {
        _setPauser(_pauser);
        _setElements(uids, yields, tokens, sponsors, endTimes);
    }

    /**
     * @dev The contract should not able to receive NativeToken.
     */
    receive() external payable virtual {revert("Not Allowed") ;}
    fallback() external payable virtual {revert("Not Allowed") ;}

    // -------------- LOGIC -------------- //
    /// @notice Role as the manager role in RewardTranche
    /// allows for the add / remove of Tranches.
    bytes32 public constant DISTRIBUTOR_MANAGER_ROLE = keccak256("DISTRIBUTOR_MANAGER_ROLE");

    /// @notice Configuration for contract initialization.
    struct Init {
        address admin;
        address manager;
        uint256[] uids;
        address[] yields;
        address[] tokens;
        address[] sponsors;
        uint256[] endTimes;
        address pauser;
    }

    /// @notice initialize the contract.
    /// @dev MUST be called during the contract upgrade to set up the proxies state.
    function initialize(Init memory init) virtual external initializer {
        __AccessControlEnumerable_init();
        __DistributeYieldERC20_init(init.pauser, init.uids, init.yields, init.tokens, init.sponsors, init.endTimes);

        // set admin roles
        _setRoleAdmin(DISTRIBUTOR_MANAGER_ROLE, DEFAULT_ADMIN_ROLE);

        // grant roles
        if (init.admin == address(0) || init.manager == address(0)) {
            revert RoleNotSet();
        }
        _grantRole(DEFAULT_ADMIN_ROLE, init.admin);
        _grantRole(DISTRIBUTOR_MANAGER_ROLE, init.manager);
    }

    function pauser() public view returns (address) {
        DistributeYieldERC20Storage storage $ = _getDistributeYieldERC20Storage();
        return address($.pauser);
    }

    // @notice accounting total claimed amount
    function totalClaimed(uint256 id) public view returns (uint256) {
        DistributeYieldERC20Storage storage $ = _getDistributeYieldERC20Storage();
        return $.totalClaimed[id];
    }

    // @notice accounting user claimed amount
    function userClaimed(uint256 id, address account) public view returns (uint256) {
        DistributeYieldERC20Storage storage $ = _getDistributeYieldERC20Storage();
        return $.userClaimed[id].get(account);
    }

    // @notice user claimable amount
    // @return claimable amount
    function earned(uint256 id, address account) public view virtual returns (uint256) {
        DistributeYieldERC20Storage storage $ = _getDistributeYieldERC20Storage();
        return IAllocateYield($.yields[id]).earned(account);
    }

    // @notice clear rewards by user
    function getReward(uint256 id, address account) public virtual nonReentrant returns (uint256) {
        DistributeYieldERC20Storage storage $ = _getDistributeYieldERC20Storage();
        if ($.endTimes[id] != 0 && block.timestamp > $.endTimes[id]) revert ClaimWindowFinished();
        if ($.pauser.isClaimPaused()) {
            revert Paused();
        }

        uint256 amount = IAllocateYield($.yields[id]).getReward(account);
        if (amount > 0) {
            IERC20($.allowedTokens[id]).safeTransferFrom($.sponsors[id], account, amount);
            $.totalClaimed[id] += amount;
            (, uint256 _userClaimed) = $.userClaimed[id].tryGet(account);
            $.userClaimed[id].set(account, _userClaimed + amount);
            emit Claimed($.yields[id], account, amount);
        }
        return amount;
    }

    function getElement(uint256 uid) external view returns (address, address, address, uint256) {
        DistributeYieldERC20Storage storage $ = _getDistributeYieldERC20Storage();
        return ($.allowedTokens[uid], $.yields[uid], $.sponsors[uid], $.endTimes[uid]);
    }

    function setTokensAndYields(uint256[] memory uids, address[] memory yields, address[] memory tokens, address[] memory sponsors, uint256[] memory endTimes)
    public
    onlyRole(DISTRIBUTOR_MANAGER_ROLE)
    {
        return _setElements(uids, yields, tokens, sponsors, endTimes);
    }

    function updateElement(uint256 uid, address yield, address token, address sponsor, uint256 endTime)
    public
    onlyRole(DISTRIBUTOR_MANAGER_ROLE)
    {
        DistributeYieldERC20Storage storage $ = _getDistributeYieldERC20Storage();
        $.yields[uid] = yield;
        $.sponsors[uid] = sponsor;
        $.endTimes[uid] = endTime;
        $.allowedTokens[uid] = token;
        emit ProtocolConfigChanged(
            bytes4(keccak256("updateElement(uint256,address,address,address,uint256)")),
            "updateElement(uint256,address,address,address,uint256)",
            abi.encode(uid,yield,token,sponsor,endTime)
        );
    }

    function _setElements(uint256[] memory uids, address[] memory yields, address[] memory tokens, address[] memory sponsors, uint256[] memory endTimes) internal {
        DistributeYieldERC20Storage storage $ = _getDistributeYieldERC20Storage();

        if (uids.length != yields.length || yields.length != tokens.length || tokens.length != sponsors.length || sponsors.length != endTimes.length) {
            revert LengthDiffer();
        }
        for (uint256 i; i < tokens.length; i++) {
            if ($.allowedTokens[uids[i]] != address(0)) {
                revert RepeatSetElement();
            }
            $.yields[uids[i]] = yields[i];
            $.sponsors[uids[i]] = sponsors[i];
            $.endTimes[uids[i]] = endTimes[i];
            $.allowedTokens[uids[i]] = tokens[i];
            emit ProtocolConfigChanged(
                bytes4(keccak256("setElements(uint256,address,address,address,uint256)")),
                "setElements(uint256,address,address,address,uint256)",
                abi.encode(uids[i],yields[i],tokens[i],sponsors[i],endTimes[i])
            );
        }
    }

    function _setPauser(address _pauser) internal {
        DistributeYieldERC20Storage storage $ = _getDistributeYieldERC20Storage();
        if (_pauser == address(0)) {
            revert InvalidInitialize();
        }
        $.pauser = IPauser(_pauser);
        emit ProtocolConfigChanged(bytes4(keccak256("_setPauser(address)")), "_setPauser(address)", abi.encode(_pauser));
    }
}
