// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {Router} from "@hpl/client/Router.sol";
import {EnumerableMapExtended} from "@hpl/libs/EnumerableMapExtended.sol";

import {OwnableUpgradeable} from "@ozu/access/OwnableUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@ozu/access/Ownable2StepUpgradeable.sol";

import {Error} from "@src/lib/Error.sol";
import {ICap} from "@src/interfaces/ICap.sol";
import {IATM} from "@src/interfaces/IATM.sol";

import {CapStorageV1} from "@src/vault/storage/CapStorageV1.sol";

contract Cap is ICap, Router, Ownable2StepUpgradeable, CapStorageV1 {
    using EnumerableMapExtended for EnumerableMapExtended.UintToBytes32Map;

    event AddLoad(address indexed vault, address indexed spender, uint256 indexed epoch, uint256 amount);
    event SubLoad(address indexed vault, address indexed saver, uint256 indexed epoch, uint256 amount);
    event MarkedReady(uint256 indexed epoch);
    event AcceptRemoteEpochDone(uint32 indexed domain, uint256 indexed epoch);
    event MoveToNextEpoch(uint256 indexed epoch, uint256 prevCap, uint256 newCap);

    event RouterSet(uint32 indexed domain, bytes32 indexed router, uint256 initEpoch);
    event RouterUnset(uint32 indexed domain);
    event ManagerSet(address indexed manager, bool allowed);
    event EpochCapSet(uint256 indexed epoch, uint256 cap);
    event EpochForceAdvanced(uint256 indexed epoch);
    event ATMSet(IATM indexed atm);

    uint32 public constant DEFAULT_EPOCH = 1;

    constructor(address mailbox) Router(mailbox) initializer {}

    //=========== merge OwnableUpgradeable & Ownable2StepUpgradeable

    function transferOwnership(address owner) public override(Ownable2StepUpgradeable, OwnableUpgradeable) {
        Ownable2StepUpgradeable.transferOwnership(owner);
    }

    function _transferOwnership(address owner) internal override(Ownable2StepUpgradeable, OwnableUpgradeable) {
        Ownable2StepUpgradeable._transferOwnership(owner);
    }

    //===========

    function initialize(address owner, IATM atm_, address hook, address ism) public initializer {
        _MailboxClient_initialize(hook, ism, owner);
        __Ownable2Step_init();
        _transferOwnership(owner);

        StorageV1 storage $ = _getStorageV1();
        $.epoch[localDomain] = DEFAULT_EPOCH;
        $.atm = atm_;
    }

    receive() external payable {}

    // Modifiers

    modifier onlyManager() {
        if (!isManager(_msgSender())) {
            revert Error.Unauthorized();
        }

        _;
    }

    // View functions

    function isManager(address manager) public view returns (bool) {
        return _getStorageV1().managers[manager];
    }

    function atm() external view returns (IATM) {
        return _getStorageV1().atm;
    }

    function cap(uint256 epoch_) public view returns (uint256) {
        return _getStorageV1().cap[epoch_];
    }

    function load() external view returns (uint256) {
        return _getStorageV1().load;
    }

    function epoch() external view returns (uint256) {
        return _epoch();
    }

    function ready() external view returns (bool) {
        return _getStorageV1().ready;
    }

    function remoteEpoch(uint32 domain) external view returns (uint256) {
        return _getStorageV1().epoch[domain];
    }

    function remoteEpochs() external view returns (uint256[] memory) {
        uint32[] memory domains = _routers.uint32Keys();
        uint256[] memory remoteEpochs_ = new uint256[](domains.length);

        StorageV1 storage $ = _getStorageV1();

        for (uint256 i = 0; i < domains.length;) {
            remoteEpochs_[i] = $.epoch[domains[i]];
            unchecked {
                i += 1;
            }
        }
        return remoteEpochs_;
    }

    function calcAdded(uint256 amount) public view returns (uint256) {
        StorageV1 storage $ = _getStorageV1();

        uint256 currentEpoch = _epoch();
        uint256 currentCap = cap(currentEpoch);

        if (currentCap <= $.load) {
            revert Error.InsufficientCap();
        }

        uint256 added = amount;
        if (currentCap < $.load + amount) {
            added = currentCap - $.load;
        }

        return added;
    }

    function calcSubbed(uint256 amount) public view returns (uint256) {
        StorageV1 storage $ = _getStorageV1();

        if ($.load == 0) {
            revert Error.InsufficientLoad();
        }

        uint256 subbed = amount;
        if ($.load < amount) {
            subbed = $.load;
        }

        return subbed;
    }

    // Mutative functions

    /// @return added actual amount
    /// @dev [IMPORTANT] probably amount needs to be normalized
    /// @dev if load + amount > cap, then only spend remaining cap
    /// @dev if cap and load is same, then revert with InsufficientCap
    function addLoad(uint256 amount, address spender) external onlyManager returns (uint256) {
        uint256 added = calcAdded(amount);

        StorageV1 storage $ = _getStorageV1();

        $.load += added;

        uint256 currentEpoch = _epoch();
        if (cap(currentEpoch) == $.load) _processDone();

        emit AddLoad(_msgSender(), spender, currentEpoch, added);

        return added;
    }

    /// @return subbed actual amount
    /// @dev if load is 0, then revert with InsufficientLoad
    /// @dev if load < amount, then only save remaining load
    function subLoad(uint256 amount, address saver) external onlyManager returns (uint256) {
        uint256 subbed = calcSubbed(amount);

        unchecked {
            _getStorageV1().load -= subbed;
        }

        emit SubLoad(_msgSender(), saver, _epoch(), subbed);

        return subbed;
    }

    /// @dev pre-set cap for the epoch
    function setEpochCap(uint256 epoch_, uint256 cap_) external onlyOwner {
        StorageV1 storage $ = _getStorageV1();

        if (epoch_ < DEFAULT_EPOCH) {
            revert Error.InvalidEpoch("epoch should be start from 1");
        }

        $.cap[epoch_] = cap_;

        // validation

        for (uint256 i = DEFAULT_EPOCH; i < epoch_; i++) {
            uint256 nextCap = $.cap[i + 1];
            if (nextCap == 0) {
                revert Error.InvalidEpoch("cap should be set sequentially");
            }
            if (nextCap < $.cap[i]) {
                revert Error.InvalidEpoch("cap should be greater than previous cap");
            }
        }

        emit EpochCapSet(epoch_, cap_);
    }

    /// @dev force set epoch & broadcast to all routers
    /// @notice this is a sudo function and should be used with caution
    function sudoEpoch(uint256 epoch_) external onlyOwner {
        StorageV1 storage $ = _getStorageV1();

        // validations
        if ($.epoch[localDomain] >= epoch_) {
            revert Error.InvalidEpoch("epoch should be greater than current epoch");
        }
        if ($.cap[epoch_] == 0) {
            revert Error.InvalidEpoch("epoch info should be set");
        }

        $.ready = false;
        $.epoch[localDomain] = epoch_;

        _broadcastEpoch($.atm, _routers.uint32Keys(), abi.encode(epoch_));

        emit EpochForceAdvanced(epoch_);
    }

    /// @dev sets ATM contract
    function setATM(IATM atm_) external onlyOwner {
        if (address(atm_).code.length == 0) revert Error.InvalidAddress("atm");

        _getStorageV1().atm = atm_;

        emit ATMSet(atm_);
    }

    /// @dev sets manager to allow or disallow.
    /// @notice "manager" is authorized to addLoad and subLoad
    function setManager(address manager, bool allowed) external onlyOwner {
        _getStorageV1().managers[manager] = allowed;

        emit ManagerSet(manager, allowed);
    }

    /// @dev set router and sets initial epoch
    /// @notice This can be useful if we want to add new router while epoch is ongoing
    function setRouter(uint32 domain, bytes32 router, uint256 initEpoch) external onlyOwner {
        if (domain == localDomain) {
            revert Error.InvalidDomain(domain);
        }
        if (initEpoch < DEFAULT_EPOCH) {
            revert Error.InvalidEpoch("epoch should be start from 1");
        }
        _enrollRemoteRouter(domain, router);
        _getStorageV1().epoch[domain] = initEpoch;

        emit RouterSet(domain, router, initEpoch);
    }

    function unsetRouter(uint32 domain) external onlyOwner {
        _unenrollRemoteRouter(domain);
        delete _getStorageV1().epoch[domain];

        emit RouterUnset(domain);
    }

    // Internal functions

    /// @dev we shares $.epoch state with other remote chain's epoch
    function _epoch() internal view returns (uint256) {
        return _getStorageV1().epoch[localDomain];
    }

    /// @notice This function is called when the epoch cap is filled
    /// @dev This actual logic can be performed only once per epoch
    /// @dev You need to focus on msgCapFilled, which is the message that is handled by _handle function
    function _processDone() internal {
        StorageV1 storage $ = _getStorageV1();

        if ($.ready) return;
        $.ready = true;
        emit MarkedReady(_epoch());

        // if not reported, then brocast to external chains that we are ready to go to next epoch
        uint32[] memory domains = _routers.uint32Keys();
        if (domains.length == 0) return;

        _broadcastEpoch($.atm, domains, abi.encode($.epoch[localDomain] + 1));

        _checkRemoteStateAndAdvance(domains);
    }

    /// @notice This functoin is called when the remote chain's epoch is done and ready to go to next epoch
    /// @dev onlyMailbox
    function _handle(uint32 origin, bytes32, bytes calldata msg_) internal override {
        StorageV1 storage $ = _getStorageV1();

        uint256 remoteEpochState = abi.decode(msg_, (uint256));

        $.epoch[origin] = remoteEpochState;
        emit AcceptRemoteEpochDone(origin, remoteEpochState);

        if ($.ready) {
            _checkRemoteStateAndAdvance(_routers.uint32Keys());
        }
    }

    function _broadcastEpoch(IATM atm_, uint32[] memory domains, bytes memory msg_) internal {
        for (uint256 i = 0; i < domains.length; i++) {
            uint256 fee = _quoteDispatch(domains[i], msg_);

            if (address(atm_) != address(0x0)) atm_.borrow(fee);

            _dispatch(domains[i], fee, msg_);
        }
    }

    /// @dev if there's no epoch cap info to advance, we just keep the current epoch. - nothing will happen
    /// @dev "domains" does not includes current local domain
    function _checkRemoteStateAndAdvance(uint32[] memory domains) internal {
        StorageV1 storage $ = _getStorageV1();

        uint256 currentEpoch = $.epoch[localDomain];
        uint256 nextEpoch = $.epoch[domains[0]];

        // 1. find the minimum epoch among all remote chains.
        // 2. check the every remote chain's epoch is same as the min epoch.

        for (uint256 i = 1; i < domains.length;) {
            uint256 epochForDomain = $.epoch[domains[i]];

            if (epochForDomain < nextEpoch) {
                nextEpoch = epochForDomain;
            }

            unchecked {
                i += 1;
            }
        }

        for (uint256 i = 1; i < domains.length;) {
            if ($.epoch[domains[i]] != nextEpoch) {
                return;
            }

            unchecked {
                i += 1;
            }
        }

        if (currentEpoch < nextEpoch) {
            if ($.cap[nextEpoch] == 0) {
                return;
            }

            $.ready = false;
            $.epoch[localDomain] = nextEpoch;

            emit MoveToNextEpoch(nextEpoch, $.cap[currentEpoch], $.cap[nextEpoch]);
        }
    }
}
