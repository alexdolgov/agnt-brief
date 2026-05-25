// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";

interface IERC1155Mintable {
    function mint(
        address account,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) external;

    function mintBatch(
        address account,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) external;
}

contract KineBox is AccessControl, Pausable, ERC1155Holder {
    bytes32 public constant URI_SETTER_ROLE = keccak256("URI_SETTER_ROLE");
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    address public immutable card;

    uint256 public immutable opening;

    struct Rate {
        uint256 tokenId;
        uint256 value;
    }

    mapping(uint256 => Rate[]) public rates;
    mapping(uint256 => mapping(uint256 => uint256)) public rateIndexes;

    mapping(uint256 => uint256) public totalRates;

    mapping(uint256 => mapping(address => uint256)) public rewards;

    mapping(uint256 => mapping(address => bool)) public claimed;

    uint256 private _lastRandomNumber = 0;

    event RateUpdated(uint256 level, uint256[] tokens, uint256[] values);
    event RewardUpdated(uint256 indexed datetime, uint256 amount);
    event Opened(
        address indexed account,
        uint256 level,
        uint256 tokenId,
        uint256 time
    );

    constructor(address card_, uint256 opening_) {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());

        grantRole(MANAGER_ROLE, _msgSender());
        grantRole(PAUSER_ROLE, _msgSender());

        card = card_;

        opening = opening_;
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(AccessControl, ERC1155Receiver)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function today() public view returns (uint256) {
        return (block.timestamp - opening) / 86400 + 1;
    }

    // 查看今日奖励
    function rewardToday(address account) public view returns (uint256) {
        return rewards[today()][account];
    }

    // 查询今日是否已领取
    function claimedToday(address account) public view returns (bool) {
        return claimed[today()][account];
    }

    function updateRate(
        uint256 level,
        uint256[] memory tokens,
        uint256[] memory values         // 这里是该卡牌的总供应量
    ) external onlyRole(MANAGER_ROLE) {
        require(tokens.length == values.length, "Invalid tokens or values");

        for (uint256 i = 0; i < tokens.length; i++) {
            uint256 rateIndex = rateIndexes[level][tokens[i]];
            if (rateIndex > 0) {
                rateIndex--;
                rates[level][rateIndex].value += values[i];
            } else {
                rates[level].push(Rate(tokens[i], values[i]));
                rateIndexes[level][tokens[i]] = rates[level].length;
            }

            totalRates[level] += values[i];
        }

        emit RateUpdated(level, tokens, values);
    }

    function resetRate(
        uint256 level,
        uint256[] memory tokens,
        uint256[] memory values         // 这里是该卡牌的总供应量
    ) external onlyRole(MANAGER_ROLE) {
        require(tokens.length == values.length, "Invalid tokens or values");

        delete rates[level];

        uint256 totalValues = 0;
        for (uint256 i = 0; i < tokens.length; i++) {
            rates[level].push(Rate(tokens[i], values[i]));
            rateIndexes[level][tokens[i]] = rates[level].length;

            totalValues += values[i];
        }

        totalRates[level] = totalValues;

        emit RateUpdated(level, tokens, values);
    }

    // 更新今日奖励
    function updateTodayReward(
        address[] memory accounts,
        uint256[] memory levels
    ) external onlyRole(MANAGER_ROLE) {
        require(accounts.length == levels.length, "Invalid accounts or levels");

        uint256 date = today();
        for (uint256 i = 0; i < accounts.length; i++) {
            rewards[date][accounts[i]] = levels[i];
        }

        emit RewardUpdated(block.timestamp, accounts.length);
    }

    // 开盲盒
    // 前端必须传入一个随机数（前端生成）
    function open(uint256 seed) external whenNotPaused {
        require(!claimedToday(_msgSender()), "Already claimed");
        require(seed > 0, "Seed value must be greater than zero");

        uint256 level = rewardToday(_msgSender());
        require(level > 0 && totalRates[level] > 0, "Today reward must be greater than zero");

        uint256 tokenId = 0;

        uint256 randomNumber = _randomNumber(seed, totalRates[level]);

        Rate[] storage data = rates[level];

        uint256 lastValue = 0;
        for (uint256 i = 0; i < data.length; i++) {
            if (data[i].value == 0) {
                continue;
            }

            lastValue += data[i].value;
            if (randomNumber <= lastValue) {
                tokenId = data[i].tokenId;

                data[i].value--;

                break;
            }
        }

        totalRates[level]--;

        require(tokenId > 0, "Invalid token");

        claimed[today()][_msgSender()] = true;

        IERC1155Mintable(card).mint(_msgSender(), tokenId, 1, "");
        emit Opened(_msgSender(), level, tokenId, block.timestamp);
    }

    function pause() public onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function _randomNumber(uint256 seed, uint256 modulus)
        internal
        returns (uint256)
    {
        uint256 randomNumber = (uint256(
            keccak256(
                abi.encodePacked(
                    _lastRandomNumber + seed,
                    block.difficulty,
                    _msgSender()
                )
            )
        ) % modulus) + 1;

        _lastRandomNumber = randomNumber;

        return randomNumber;
    }
}
