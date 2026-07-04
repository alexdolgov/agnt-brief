// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "./CheckContract.sol";

/*
This contract is reserved for Linear Vesting to the Team members and the Advisors team.
*/
contract LockedGhny is Ownable, ReentrancyGuard, CheckContract {
    using SafeERC20 for IERC20;

    struct Rule {
        uint256 totalSupply;
        uint256 startVestingDate;
        uint256 endVestingDate;
        uint256 claimed;
    }

    constructor(address _ghnyAddress, address _owner) Ownable(msg.sender) {
        checkContract(_ghnyAddress);
        ghnyToken = IERC20(_ghnyAddress);
        _transferOwnership(_owner);
    }

    string public constant NAME = "LockedGhny";

    IERC20 private ghnyToken;
    uint256 private assignedGhnyTokens;

    uint256 public constant THREE_MONTHS = 2190 hours;

    mapping(address => Rule) public entitiesVesting;

    modifier entityRuleExists(address _entity) {
        require(
            entitiesVesting[_entity].startVestingDate != 0,
            "Entity doesn't have a Vesting Rule"
        );
        _;
    }

    function addEntityVestingBatch(
        address[] memory _entities,
        uint256[] memory _totalSupplies,
        uint256 _startTime
    ) external onlyOwner {
        require(
            _entities.length == _totalSupplies.length,
            "Array length missmatch"
        );
        require(_startTime != 0, "Start time can not be 0");

        uint256 _sumTotalSupplies = 0;

        for (uint256 i = 0; i < _entities.length; i++) {
            address _entity = _entities[i];
            uint256 _totalSupply = _totalSupplies[i];

            require(address(0) != _entity, "Invalid Address");

            require(
                entitiesVesting[_entity].startVestingDate == 0,
                "Entity already has a Vesting Rule"
            );

            entitiesVesting[_entity] = Rule(
                _totalSupply,
                _startTime,
                _startTime + THREE_MONTHS,
                0
            );

            _sumTotalSupplies += _totalSupply;
        }

        assignedGhnyTokens += _sumTotalSupplies;

        ghnyToken.safeTransferFrom(
            msg.sender,
            address(this),
            _sumTotalSupplies
        );
    }

    function addEntityVesting(
        address _entity,
        uint256 _totalSupply,
        uint256 _startTime
    ) external onlyOwner {
        require(address(0) != _entity, "Invalid Address");
        require(_startTime != 0, "Start time can not be 0");

        require(
            entitiesVesting[_entity].startVestingDate == 0,
            "Entity already has a Vesting Rule"
        );

        assignedGhnyTokens += _totalSupply;

        entitiesVesting[_entity] = Rule(
            _totalSupply,
            _startTime,
            _startTime + THREE_MONTHS,
            0
        );

        ghnyToken.safeTransferFrom(msg.sender, address(this), _totalSupply);
    }

    function removeEntityVesting(
        address _entity
    ) external nonReentrant onlyOwner entityRuleExists(_entity) {
        sendGhnyTokenToEntity(_entity);
        Rule memory vestingRule = entitiesVesting[_entity];

        assignedGhnyTokens =
            assignedGhnyTokens -
            (vestingRule.totalSupply - vestingRule.claimed);

        delete entitiesVesting[_entity];
    }

    function claimGhnyToken() public entityRuleExists(msg.sender) {
        sendGhnyTokenToEntity(msg.sender);
    }

    function sendGhnyTokenToEntity(address _entity) private {
        uint256 unclaimedAmount = getClaimableGhny(_entity);
        if (unclaimedAmount == 0) return;

        Rule storage entityRule = entitiesVesting[_entity];
        entityRule.claimed += unclaimedAmount;

        assignedGhnyTokens = assignedGhnyTokens - unclaimedAmount;
        ghnyToken.safeTransfer(_entity, unclaimedAmount);
    }

    function transferUnassignedGhny() external onlyOwner {
        uint256 unassignedTokens = getUnassignGhnyTokensAmount();

        if (unassignedTokens == 0) return;

        ghnyToken.safeTransfer(msg.sender, unassignedTokens);
    }

    function getClaimableGhny(
        address _entity
    ) public view returns (uint256 claimable) {
        Rule memory entityRule = entitiesVesting[_entity];
        claimable = 0;

        if (entityRule.startVestingDate > block.timestamp) return claimable;

        if (block.timestamp >= entityRule.endVestingDate) {
            claimable = entityRule.totalSupply - entityRule.claimed;
        } else {
            claimable =
                (entityRule.totalSupply *
                    (block.timestamp - entityRule.startVestingDate)) /
                THREE_MONTHS -
                entityRule.claimed;
        }

        return claimable;
    }

    function getUnassignGhnyTokensAmount() public view returns (uint256) {
        return ghnyToken.balanceOf(address(this)) - assignedGhnyTokens;
    }

    function isEntityExits(address _entity) public view returns (bool) {
        return entitiesVesting[_entity].startVestingDate != 0;
    }
}
