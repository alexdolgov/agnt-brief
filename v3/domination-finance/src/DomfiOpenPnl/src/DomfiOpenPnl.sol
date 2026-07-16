// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";

import { IDomfiOpenPnl } from "./interfaces/IDomfiOpenPnl.sol";
import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiVault } from "./interfaces/IDomfiVault.sol";
import { IOwnable } from "./interfaces/IOwnable.sol";

contract DomfiOpenPnl is IDomfiOpenPnl, Initializable {
    using SafeCast for uint256;

    int64 internal constant PRECISION_18 = 1e18; // 18 decimals
    uint32 internal constant MAX_REQUESTS_START = 1 weeks;
    uint32 internal constant MAX_REQUESTS_EVERY = 1 days;
    uint16 internal constant MIN_REQUESTS = 1 hours;
    uint8 internal constant MIN_REQUESTS_COUNT = 1;
    uint8 internal constant MAX_REQUESTS_COUNT = 24;

    IDomfiRegistry public registry;

    int256 private accTotalPnl;
    int256 private accClosedPnl;

    int256[] public nextEpochValues;
    uint256 public lastRequestId;
    uint32 public requestsStart;
    uint32 public requestsEvery;
    uint32 public nextEpochValuesLastRequestTs;
    uint8 public nextEpochValuesRequestCount;
    uint8 public requestsCount;

    mapping(uint16 pairIndex => int256) public lastTradePrice;
    mapping(uint16 pairIndex => int256) public accNetOiUnits;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        IDomfiRegistry registryAddress,
        uint32 initialRequestsStart,
        uint32 initialRequestsEvery,
        uint8 initialRequestsCount
    ) external initializer {
        if (address(registryAddress) == address(0)) {
            revert WrongParams();
        }

        registry = registryAddress;
        _updateRequestsStart(initialRequestsStart);
        _updateRequestsEvery(initialRequestsEvery);
        _updateRequestsCount(initialRequestsCount);
    }

    modifier onlyRegistryOwner() {
        _onlyRegistryOwner();
        _;
    }

    function _onlyRegistryOwner() private view {
        if (msg.sender != IOwnable(address(registry)).owner()) {
            revert NotRegistryOwner(msg.sender);
        }
    }

    function updateRequestsStart(uint32 newValue) external onlyRegistryOwner {
        _updateRequestsStart(newValue);
    }

    function _updateRequestsStart(uint32 newValue) private {
        if (newValue < MIN_REQUESTS || newValue > MAX_REQUESTS_START) {
            revert WrongParams();
        }

        requestsStart = newValue;
        emit RequestsStartUpdated(newValue);
    }

    function updateRequestsEvery(uint32 newValue) external onlyRegistryOwner {
        _updateRequestsEvery(newValue);
    }

    function _updateRequestsEvery(uint32 newValue) private {
        if (newValue < MIN_REQUESTS || newValue > MAX_REQUESTS_EVERY) {
            revert WrongParams();
        }

        requestsEvery = newValue;
        emit RequestsEveryUpdated(newValue);
    }

    function updateRequestsCount(uint8 newValue) external onlyRegistryOwner {
        _updateRequestsCount(newValue);
    }

    function _updateRequestsCount(uint8 newValue) private {
        if (newValue < MIN_REQUESTS_COUNT || newValue > MAX_REQUESTS_COUNT) {
            revert WrongParams();
        }

        requestsCount = newValue;
        emit RequestsCountUpdated(newValue);
    }

    function updateRequestsInfoBatch(
        uint32 newRequestsStart,
        uint32 newRequestsEvery,
        uint8 newRequestsCount
    ) external onlyRegistryOwner {
        _updateRequestsStart(newRequestsStart);
        _updateRequestsEvery(newRequestsEvery);
        _updateRequestsCount(newRequestsCount);
    }

    function forceNewEpoch() external {
        uint256 currentEpochStart =
            IDomfiVault(registry.getContractAddress("vault")).currentEpochStart();

        // slither-disable-next-line timestamp
        if (block.timestamp - currentEpochStart < requestsStart + requestsEvery * requestsCount) {
            revert TooEarly();
        }

        uint256 newEpoch = startNewEpoch();
        emit NewEpochForced(newEpoch);
    }

    function newOpenPnlRequestOrEpoch() external {
        // slither-disable-next-line incorrect-equality
        bool firstRequest = nextEpochValuesLastRequestTs == 0;

        uint256 currentEpochStart =
            IDomfiVault(registry.getContractAddress("vault")).currentEpochStart();

        // slither-disable-next-line timestamp
        if (firstRequest && block.timestamp - currentEpochStart >= requestsStart) {
            makeOpenPnlRequest();
        } else if (!firstRequest && block.timestamp - nextEpochValuesLastRequestTs >= requestsEvery)
        {
            if (nextEpochValuesRequestCount < requestsCount) {
                makeOpenPnlRequest();
            } else if (nextEpochValues.length >= requestsCount) {
                startNewEpoch();
            }
        }
    }

    function getOpenPnl() public view returns (int256) {
        return (accTotalPnl - accClosedPnl);
    }

    function makeOpenPnlRequest() private {
        ++lastRequestId;
        nextEpochValuesRequestCount++;
        nextEpochValuesLastRequestTs = uint32(block.timestamp);

        int256 openPnlValue = getOpenPnl();
        nextEpochValues.push(openPnlValue);

        emit NextEpochValueRequested(
            IDomfiVault(registry.getContractAddress("vault")).currentEpoch(),
            lastRequestId,
            openPnlValue
        );
    }

    function startNewEpoch() private returns (uint256 newEpoch) {
        IDomfiVault vault = IDomfiVault(registry.getContractAddress("vault"));
        nextEpochValuesRequestCount = 0;
        nextEpochValuesLastRequestTs = 0;

        assert(nextEpochValues.length != 0);

        int256 currentEpochPositiveOpenPnl = vault.currentEpochOpenPnl();

        // cache storage array in memory for efficiency
        int256[] memory _nextEpochValues = nextEpochValues;
        bubbleSort(_nextEpochValues);

        int256 medianEpochValue;

        if (_nextEpochValues.length % 2 == 1) {
            medianEpochValue = _nextEpochValues[_nextEpochValues.length / 2];
        } else {
            int256 midIndex = int256(_nextEpochValues.length / 2) - 1;
            int256 mid1 = _nextEpochValues[midIndex >= 0 ? uint256(midIndex) : uint256(0)];
            int256 mid2 = _nextEpochValues[_nextEpochValues.length / 2];
            medianEpochValue = (mid1 + mid2) / 2;
        }

        // Note: final newEpochOpenPnl is a blend of the current spot price and median pnl
        int256 spotPnl = getOpenPnl();

        // slither-disable-next-line divide-before-multiply
        int256 newEpochOpenPnl = (medianEpochValue * 6 + spotPnl * 4) / 10;

        // slither-disable-next-line reentrancy-no-eth
        int256 finalNewEpochOpenPnl =
            vault.updateAccPnlPerTokenUsed(currentEpochPositiveOpenPnl, newEpochOpenPnl);

        newEpoch = vault.currentEpoch();

        emit NewEpoch(
            newEpoch, lastRequestId, _nextEpochValues, newEpochOpenPnl, finalNewEpochOpenPnl
        );

        delete nextEpochValues;
    }

    function updateAccTotalPnl(
        int256 oraclePrice,
        uint256 openPrice,
        uint256 closePrice,
        uint256 oiNotional,
        uint16 pairIndex,
        bool buy,
        bool open
    ) external {
        if (msg.sender != registry.getContractAddress("callbacks")) {
            revert NotCallbacks(msg.sender);
        }
        int256 oiNotionalSigned = buy ? oiNotional.toInt256() : -oiNotional.toInt256();

        if (open) {
            accTotalPnl -= oiNotionalSigned * (openPrice.toInt256() - oraclePrice) / PRECISION_18;
        } else {
            accTotalPnl -= oiNotionalSigned * (oraclePrice - closePrice.toInt256()) / PRECISION_18;
            accClosedPnl -= oiNotionalSigned * (openPrice.toInt256() - closePrice.toInt256())
                / PRECISION_18;
        }

        accTotalPnl += (oraclePrice - lastTradePrice[pairIndex]) * accNetOiUnits[pairIndex]
            / PRECISION_18;

        lastTradePrice[pairIndex] = oraclePrice;
        emit LastTradePriceUpdated(pairIndex, oraclePrice);

        accNetOiUnits[pairIndex] = open
            ? accNetOiUnits[pairIndex] + oiNotionalSigned
            : accNetOiUnits[pairIndex] - oiNotionalSigned;

        emit AccTotalPnlUpdated(pairIndex, accTotalPnl, accClosedPnl, accNetOiUnits[pairIndex]);
    }

    /**
     * @dev Sorts an array of int256 in ascending order using bubble sort. This function modifies
     * the input array in memory and returns it. Bubble sort has O(n^2) time complexity, so it's
     * not efficient for large arrays.
     * @param arr The array to sort (memory reference).
     * @return The sorted array.
     */
    function bubbleSort(int256[] memory arr) internal pure returns (int256[] memory) {
        uint256 n = arr.length;
        for (uint256 i = 0; i < n; i++) {
            for (uint256 j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    int256 temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
        return arr;
    }
}
