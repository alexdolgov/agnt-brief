// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;

import "src/lib/Token.sol";
import "src/interfaces/IVault.sol";
import "src/interfaces/IGauge.sol";
import "src/lib/PoolBalanceLib.sol";
import "src/interfaces/IGauge.sol";
import "src/interfaces/IBribe.sol";
import "src/interfaces/IAuthorizer.sol";
import "openzeppelin-contracts/contracts/utils/structs/BitMaps.sol";
import "openzeppelin-contracts/contracts/utils/StorageSlot.sol";
import "openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol";

// A base contract inherited by every facet.

// Vault stores everything on named slots, in order to:
// - prevent storage collision
// - make information access cheaper. (see Diamond.yul)
// The downside of doing that is that storage access becomes exteremely verbose;
// We define large singleton structs to mitigate that.

struct EmissionInformation {
    // a singleton struct for emission-related global data
    // accessed as `_e()`
    uint128 perVote; // (number of VC tokens ever emitted, per vote) * 1e9; monotonically increasing.
    uint128 totalVotes; // the current sum of votes on all pool
    mapping(IGauge => GaugeInformation) gauges; // per-guage informations
}

struct GaugeInformation {
    // we use `lastBribeUpdate == 1` as a special value indicating a killed gauge
    // note that this is updated with bribe calculation, not emission calculation, unlike perVoteAtLastEmissionUpdate
    uint32 lastBribeUpdate;
    uint112 perVoteAtLastEmissionUpdate;
    //
    // total vote on this gauge
    uint112 totalVotes;
    //
    mapping(address => uint256) userVotes;
    //
    // bribes are contracts; we call them to extort bribes on demand
    EnumerableSet.AddressSet bribes;
    //
    // for storing extorted bribes.
    // we track (accumulated reward / vote), per bribe contract, per token
    // we separately track rewards from different bribes, to contain bad-behaving bribe contracts
    mapping(IBribe => mapping(Token => Rewards)) rewards;
}

// tracks the distribution of a single token
struct Rewards {
    // accumulated rewards per vote * 1e9
    uint256 current;
    // `accumulated rewards per vote * 1e9` at the moment of last claim of the user
    mapping(address => uint256) snapshots;
}

contract VaultStorage {
    event FunctionChanged(bytes4 indexed sig, address indexed implementaion, bool viewer);
    event Swap(ISwap indexed pool, address indexed user, Token[] tokenRef, int128[] delta);
    event Gauge(IGauge indexed pool, address indexed user, Token[] tokenRef, int128[] delta);
    event Convert(IConverter indexed pool, address indexed user, Token[] tokenRef, int128[] delta);
    event Vote(IGauge indexed pool, address indexed user, int256 voteDelta);
    event UserBalance(address indexed to, address indexed from, Token[] tokenRef, int128[] delta);
    event BribeAttached(IGauge indexed gauge, IBribe indexed bribe);
    event BribeKilled(IGauge indexed gauge, IBribe indexed bribe);
    event GaugeKilled(IGauge indexed gauge, bool killed);

    function _setFunction(bytes4 sig, address implementation) internal {
        assembly ("memory-safe") {
            sstore(not(shr(0xe0, sig)), implementation)
        }
        emit FunctionChanged(sig, implementation, false);
    }

    // viewer implementations are stored as `not(implementation)`. please refer to Diamond.yul for more information
    function _setViewer(bytes4 sig, address implementation) internal {
        assembly ("memory-safe") {
            sstore(not(shr(0xe0, sig)), not(implementation))
        }
        emit FunctionChanged(sig, implementation, true);
    }

    // each pool has two accounts of balance: gauge balance and pool balance; both are uint128.
    // they are stored in a wrapped bytes32, PoolBalance
    // the only difference between them is that new emissions are credited into the gauge balance.
    // the pool can use them in any way they want.
    function _poolBalances() internal pure returns (mapping(IPool => mapping(Token => PoolBalance)) storage ret) {
        bytes32 slot = SSLOT_HYPERCORE_POOLBALANCES;
        assembly ("memory-safe") {
            ret.slot := slot
        }
    }

    function _e() internal pure returns (EmissionInformation storage ret) {
        bytes32 slot = SSLOT_HYPERCORE_EMISSIONINFORMATION;
        assembly ("memory-safe") {
            ret.slot := slot
        }
    }

    // users can also store tokens directly in the vault; their balances are tracked separately.
    function _userBalances() internal pure returns (mapping(address => mapping(Token => uint256)) storage ret) {
        bytes32 slot = SSLOT_HYPERCORE_USERBALANCES;
        assembly ("memory-safe") {
            ret.slot := slot
        }
    }

    modifier nonReentrant() {
        require(StorageSlot.getUint256Slot(SSLOT_REENTRACNYGUARD_LOCKED).value < 2, "REENTRANCY");
        StorageSlot.getUint256Slot(SSLOT_REENTRACNYGUARD_LOCKED).value = 2;
        _;
        StorageSlot.getUint256Slot(SSLOT_REENTRACNYGUARD_LOCKED).value = 1;
    }

    modifier whenNotPaused() {
        require(StorageSlot.getUint256Slot(SSLOT_PAUSABLE_PAUSED).value == 0, "PAUSED");
        _;
    }

    // this contract delegates access control to another contract, IAuthenticator.
    // this design was inspired by Balancer.
    // actionId is a function of method signature and contract address
    modifier authenticate() {
        authenticateCaller();
        _;
    }

    function authenticateCaller() internal {
        bytes32 actionId = keccak256(abi.encodePacked(bytes32(uint256(uint160(address(this)))), msg.sig));
        require(
            IAuthorizer(StorageSlot.getAddressSlot(SSLOT_HYPERCORE_AUTHORIZER).value).canPerform(
                actionId, msg.sender, address(this)
            ),
            "unauthorized"
        );
    }
}
