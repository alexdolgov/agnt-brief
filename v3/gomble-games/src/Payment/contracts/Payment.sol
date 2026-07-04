// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./lib/BokkyPooBahsDateTimeLibrary.sol";

contract Payment is OwnableUpgradeable, ReentrancyGuard {

    event Pay(address userAddress, uint256 itemId, uint256 price, uint256 refund, string payload);
    event AddItem(uint256 itemId, uint256 price, bool isUnlimited, uint256 dailyLimit);
    event UpdateItem(uint256 itemId, uint256 price, bool isUnlimited, uint256 dailyLimit);

    struct Item {
        uint256 price;
        bool isRegistered;
        bool isUnlimited;
        uint256 dailyLimit;
    }

    mapping(address => mapping(uint256 => uint256)) public userPayTime; // user => itemId => timestamp
    mapping(address => mapping(uint256 => uint256)) public userDailyPayCount; // user => itemId => count
    mapping(uint256 => Item) public items; // item id => item
    address public treasury;

    function initialize(
        address initialOwner,
        address _treasury
    ) external initializer {
        __Ownable_init(initialOwner);
        treasury = _treasury;
        items[8001] = Item(1900000000000000, true, true, 0); // 0.0019 eth
        items[8002] = Item(9400000000000000, true, true, 0); // 0.0094 eth
        items[8003] = Item(25000000000000000, true, true, 0); // 0.025 eth
        items[8004] = Item(51000000000000000, true, true, 0); // 0.051 eth
        items[8005] = Item(130000000000000000, true, true, 0); // 0.13 eth
        items[8006] = Item(240000000000000000, true, true, 0); // 0.24 eth
        items[9000] = Item(0, true, true, 0); // referral
    }

    function pay(uint256 itemId, string memory payload) external payable nonReentrant {
        Item memory item = items[itemId];
        require(item.isRegistered, 'Item Not Registered');
        require(msg.value >= item.price, 'Insufficient Value');
        address user = msg.sender;
        require(!_isContract(user), 'ONLY EOA');
        if(!item.isUnlimited) {
            _checkDailyPayLimit(itemId, user);
        }
        uint256 refund = 0;
        if (msg.value - item.price > 0) {
            refund = msg.value - item.price;
        }
        treasury.call{value: item.price}('');
        if (refund > 0) {
            user.call{value: refund}('');
        }
        emit Pay(user, itemId, item.price, refund, payload);
    }

    function addItem(uint256 itemId, uint256 price, bool isUnlimited, uint256 dailyLimit) external onlyOwner {
        _addItem(itemId, price, isUnlimited, dailyLimit);
    }

    function addItems(uint256[] memory itemIds, uint256[] memory prices, bool[] memory isUnlimited, uint256[] memory dailyLimits) external onlyOwner {
        uint256 length = itemIds.length;
        require(prices.length == length && isUnlimited.length == length && dailyLimits.length == length, 'Invalid Item');

        for(uint256 i = 0; i < itemIds.length; i++) {
            _addItem(itemIds[i], prices[i], isUnlimited[i], dailyLimits[i]);
        }
    }

    function _addItem(uint256 itemId, uint256 price, bool isUnlimited, uint256 dailyLimit) internal {
        require(!items[itemId].isRegistered, 'Item Already Registered');
        require(isUnlimited ? dailyLimit == 0 : dailyLimit > 0, 'Invalid Limit');
        items[itemId] = Item(price, true, isUnlimited, dailyLimit);
        emit AddItem(itemId, price, isUnlimited, dailyLimit);
    }

    function updateItem(uint256 itemId, uint256 price, bool isUnlimited, uint256 dailyLimit) external onlyOwner {
        _updateItem(itemId, price, isUnlimited, dailyLimit);
    }

    function updateItems(uint256[] memory itemIds, uint256[] memory prices, bool[] memory isUnlimited, uint256[] memory dailyLimits) external onlyOwner {
        uint256 length = itemIds.length;
        require(prices.length == length && isUnlimited.length == length && dailyLimits.length == length, 'Invalid Item');

        for(uint256 i = 0; i < itemIds.length; i++) {
            _updateItem(itemIds[i], prices[i], isUnlimited[i], dailyLimits[i]);
        }
    }

    function _updateItem(uint256 itemId, uint256 price, bool isUnlimited, uint256 dailyLimit) internal {
        require(items[itemId].isRegistered, 'Item Not Registered');
        require(isUnlimited ? dailyLimit == 0 : dailyLimit > 0, 'Invalid Limit');
        items[itemId].price = price;
        items[itemId].isUnlimited = isUnlimited;
        items[itemId].dailyLimit = dailyLimit;
        emit UpdateItem(itemId, price, isUnlimited, dailyLimit);
    }

    function _checkDailyPayLimit(uint256 itemId, address user) internal {
        require(items[itemId].dailyLimit > 0, 'Daily Limit is 0');
        uint256 lastTime = userPayTime[user][itemId];
        uint256 currentTime = block.timestamp;

        uint256 remainOneDayInSecond = BokkyPooBahsDateTimeLibrary.SECONDS_PER_DAY - (lastTime % BokkyPooBahsDateTimeLibrary.SECONDS_PER_DAY);
        if (lastTime == 0 || lastTime + remainOneDayInSecond >= currentTime) {
            require(userDailyPayCount[user][itemId] < items[itemId].dailyLimit, 'Exceed Daily Pay Limit');
            userDailyPayCount[user][itemId]++;
        } else {
            userDailyPayCount[user][itemId] = 1;
        }
        userPayTime[user][itemId] = currentTime;
    }

    function _isContract(address addr) internal view returns (bool) {
        uint32 size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }
}
