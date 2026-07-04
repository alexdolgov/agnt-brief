// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/Multicall.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

/// @custom:security-contact security@p00ls.com
contract VestedAirdrops is AccessControl, Multicall {
    bytes32 public constant VESTING_MANAGER_ROLE = keccak256("VESTING_MANAGER_ROLE");
    uint256 private constant PERCENTAGE_100 = 100e2;

    struct Schedule {
        // airdrop ID
        uint64  id;
        address recipient;
        uint256 amount;
    }

    struct Airdrop {
        string   name;
        bytes32  root;
        IERC20   token;
        uint256  total;
        uint256  claimed;

        uint96   claimStart;
        // For airdrops that must be collected within a time window.
        uint96   claimEnd;
        // Cliff ends for unlocked tockens
        uint96   cliffEnd;
        // Vesting srart, duration
        uint96   vestingStart;
        uint96   vestingDuration;
        // Vesting percentage; remaining tokens treated as unlocked, considering the cliff.
        // 4 decimals
        uint96   vestingPercentage;

        bool     withdrawn;
        bool     enabled;
    }

    // root => Airdrop ID
    mapping(bytes32 => uint)  private _airdrops;
    Airdrop[]                 private _airdropsArr;

    // leaf => claimed amount
    mapping(bytes32 => uint256) public _released;


    event AirdropCreated(uint256 indexed id, bytes32 indexed airdrop, uint256 total);
    event AirdropUpdated(uint256 indexed id, bytes32 indexed airdrop);
    event TokensReleased(bytes32 indexed airdrop, bytes32 indexed leaf, IERC20 token, address recipient, uint256 releasedAmount, uint256 scheduleAmount);

    constructor(address admin)
    {
        _grantRole(DEFAULT_ADMIN_ROLE,   admin);
        _grantRole(VESTING_MANAGER_ROLE, admin);
    }

    function createAirdrop(
        string calldata name,
        bytes32 root,
        address token,
        uint256 total,
        uint256 reserved,
        uint96 claimStart,
        uint96 claimEnd,
        uint96 cliffEnd,
        uint96 vestingStart,
        uint96 vestingDuration,
        uint96 vestingPercentage
    )
        external
        onlyRole(VESTING_MANAGER_ROLE)
    {
        require(_airdrops[root] == 0, "EXISTS");
        require(token != address(0), "INVALID_TOKEN");
        require(vestingPercentage <= PERCENTAGE_100,"PERCENTAGE_TOO_LARGE");
        require(vestingPercentage == 0 || vestingPercentage >= PERCENTAGE_100 / 100, "PERCENTAGE_TOO_LOW");

        _airdropsArr.push(Airdrop({
            name: name,
            root: root,
            token: IERC20(token),
            total: total,
            claimed: reserved,

            claimStart: claimStart,
            claimEnd: claimEnd,
            cliffEnd: cliffEnd,
            vestingStart: vestingStart,
            vestingDuration: vestingDuration,
            vestingPercentage: vestingPercentage,

            withdrawn: false,
            enabled: true
        }));

        _airdrops[root] = _airdropsArr.length;
        emit AirdropCreated(_airdropsArr.length, root, total);
    }

    function updateAirdrop(
        uint64 id,
        string calldata name,
        uint96 cliffEnd,
        uint96 claimStart,
        uint96 claimEnd,
        uint96 vestingStart,
        uint96 vestingDuration,
        uint96 vestingPercentage,
        bool enabled
    )
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(id > 0 && id <= _airdropsArr.length, "INVALID_ID");
        require(vestingPercentage <= PERCENTAGE_100,"PERCENTAGE_TOO_LARGE");
        require(vestingPercentage == 0 || vestingPercentage >= PERCENTAGE_100 / 100,"PERCENTAGE_TOO_LOW");

        Airdrop storage airdrop = _airdropsArr[id - 1];

        airdrop.name = name;
        airdrop.claimStart = claimStart;
        airdrop.claimEnd = claimEnd;
        airdrop.cliffEnd = cliffEnd;
        airdrop.vestingStart = vestingStart;
        airdrop.vestingDuration = vestingDuration;
        airdrop.vestingPercentage = vestingPercentage;
        airdrop.enabled = enabled;

        emit AirdropUpdated(id, airdrop.root);
    }

    /// @notice Withdraw tokens, that were not claimed within the claim period
    function withdrawUnclaimed(uint256 id, address treasury)
        external
        onlyRole(VESTING_MANAGER_ROLE)
    {
        Airdrop storage airdrop = _airdropsArr[id - 1];
        require(airdrop.claimEnd < block.timestamp, "CLAIM_PERIOD_NOT_ENDED");
        require(airdrop.withdrawn == false, "WITHDRAWN");
        airdrop.withdrawn = true;

        uint256 amount = airdrop.total - airdrop.claimed;
        uint256 balance = airdrop.token.balanceOf(address(this));
        if (amount > balance) {
            amount = balance;
        }
        if (amount > 0) {
            SafeERC20.safeTransfer(airdrop.token, treasury, amount);
        }
    }

    /// @notice Withdraw airdropped tokens to revisit amounts, later the contract can be funded again
    function withdrawRecovery(IERC20 token, address treasury)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        uint256 balance = token.balanceOf(address(this));
        if (balance > 0) {
            SafeERC20.safeTransfer(token, treasury, balance);
        }
    }

    function isEnabled(bytes32 root)
        public
        view
        returns (bool)
    {
        uint id = _airdrops[root];
        return id > 0 && _airdropsArr[id - 1].enabled == true;
    }

    function getAirdrop (uint id) public view returns (Airdrop memory) {
        require(id > 0 && id <= _airdropsArr.length, "Out_of_Range");
        return _airdropsArr[id - 1];
    }
    function getAirdropCount () public view returns (uint256) {
        return _airdropsArr.length;
    }

    function getVestedAmount(
        uint96 cliffEnd,
        uint96 vestingStart,
        uint96 vestingDuration,
        uint96 vestingPercentage,
        uint256 amount,
        uint64 timestamp
    ) public pure returns (uint256) {

        uint unlockedAmount = 0;
        uint vestedAmount = 0;

        if (vestingDuration == 0) {
            unlockedAmount = amount;
        } else {
            // Has vesting period
            bool partialVesting = vestingPercentage != 0;
            uint vestingTotal = partialVesting == false
                ? amount
                : amount * vestingPercentage / PERCENTAGE_100;

            unlockedAmount = amount - vestingTotal;

            vestedAmount = timestamp < vestingStart ? 0 : Math.min(
                vestingTotal,
                vestingTotal * (timestamp - vestingStart) / vestingDuration
            );
        }
        if (cliffEnd > 0 && timestamp < cliffEnd) {
            unlockedAmount = 0;
        }
        return unlockedAmount + vestedAmount;
    }

    function getReleased(bytes32 leaf)
        public
        view
        returns (uint256)
    {
        // 1 = flagged airdrop as claimed;
        return _released[leaf] == 1 ? 0 : _released[leaf];
    }

    function checkRelease(Schedule memory schedule, bytes32[] memory proof)
        public
        view
        returns (uint256, uint256, bytes32, bytes32)
    {
        // check proof
        bytes32 leaf = hashSchedule(schedule);
        bytes32 drop = MerkleProof.processProof(proof, leaf);
        require(isEnabled(drop), "VestedAirdrops: unknown airdrop");

        // get details
        Airdrop storage airdrop = _airdropsArr[_airdrops[drop] - 1];

        uint256 vested = getVestedAmount(
            airdrop.cliffEnd,
            airdrop.vestingStart,
            airdrop.vestingDuration,
            airdrop.vestingPercentage,
            schedule.amount,
            uint64(block.timestamp)
        );
        uint256 releasable = vested - getReleased(leaf);
        return (vested, releasable, drop, leaf);
    }

    function release(Schedule memory schedule, bytes32[] memory proof) public {
        // get schedule details
        (
            uint256 vested,
            uint256 releasable,
            bytes32 drop,
            bytes32 leaf
        ) = checkRelease(schedule, proof); // reverts if proof is invalid

        uint256 id = _airdrops[drop];
        require(id > 0 && id <= _airdropsArr.length, "Unknown_Id");
        Airdrop storage airdrop = _airdropsArr[id - 1];
        require(airdrop.claimStart < block.timestamp, "CLAIM_PERIOD: not started");

        if (airdrop.claimEnd != 0) {
            // Airdrop with claim period
            if (airdrop.claimEnd < block.timestamp) {
                require(_released[leaf] > 0, "Airdrop_Not_Claimed");
            }
            if (_released[leaf] == 0) {
                // Flag first airdrop release
                _released[leaf] = 1;
                // Track total claimed amount
                airdrop.claimed += schedule.amount;
            }
        }

        if (releasable > 0) {
            _released[leaf] = vested;
            require(airdrop.token.balanceOf(address(this)) >= releasable, "Refuel_The_Bucket");
            // emit notification
            emit TokensReleased(drop, leaf, airdrop.token, schedule.recipient, releasable, schedule.amount);
            // do release
            SafeERC20.safeTransfer(airdrop.token, schedule.recipient, releasable);
        }
    }

    function hashSchedule(Schedule memory schedule)
        public
        pure
        returns (bytes32)
    {
        return keccak256(abi.encodePacked(
            schedule.id,
            schedule.recipient,
            schedule.amount
        ));
    }


    struct AirdropAccountStatus {
        uint64 id;
        uint256 released;
        uint256 vested;
        uint256 amount;
        uint256 vestingStart;
        uint256 vestingDuration;
        uint256 vestingPercentage;
        uint256 claimStart;
        uint256 claimEnd;
        uint256 cliffEnd;
    }

    function status(Schedule memory schedule)
        public
        view
        returns (AirdropAccountStatus memory)
    {
        Airdrop memory airdrop = getAirdrop(schedule.id);

        bytes32 leaf = hashSchedule(schedule);

        uint256 released = _released[leaf];
        uint256 vested = getVestedAmount(
            airdrop.cliffEnd,
            airdrop.vestingStart,
            airdrop.vestingDuration,
            airdrop.vestingPercentage,
            schedule.amount,
            uint64(block.timestamp)
        );

        AirdropAccountStatus memory info = AirdropAccountStatus({
            id:                 schedule.id,
            released:           released,
            vested:             vested,
            amount:             schedule.amount,
            vestingStart:       airdrop.vestingStart,
            vestingDuration:    airdrop.vestingDuration,
            vestingPercentage:  airdrop.vestingPercentage,
            claimStart:         airdrop.claimStart,
            claimEnd:           airdrop.claimEnd,
            cliffEnd:           airdrop.cliffEnd
        });
        return info;
    }

}
