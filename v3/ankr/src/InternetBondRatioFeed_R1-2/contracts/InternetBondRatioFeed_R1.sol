// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.6;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "./interfaces/IInternetBondRatioFeed.sol";

contract InternetBondRatioFeed_R1 is
    OwnableUpgradeable,
    IInternetBondRatioFeed
{
    event OperatorAdded(address operator);
    event OperatorRemoved(address operator);

    struct HistoricalRatios {
        uint64[9] historicalRatios;
        uint40 lastUpdate;
    }

    mapping(address => bool) _isOperator;
    mapping(address => uint256) private _ratios;

    mapping(address => HistoricalRatios) public historicalRatios;

    function initialize(address operator) public initializer {
        __Ownable_init();
        _isOperator[operator] = true;
    }

    function updateRatioBatch(
        address[] calldata addresses,
        uint256[] calldata ratios
    ) public override onlyOperator {
        require(addresses.length == ratios.length, "corrupted ratio data");
        for (uint256 i = 0; i < addresses.length; i++) {
            _ratios[addresses[i]] = ratios[i];
            HistoricalRatios storage hisRatio = historicalRatios[addresses[i]];
            if (block.timestamp - hisRatio.lastUpdate > 1 days - 1 minutes) {
                uint64 latestOffset = hisRatio.historicalRatios[0];
                hisRatio.historicalRatios[
                    ((latestOffset + 1) % 8) + 1
                ] = uint64(ratios[i]);
                hisRatio.historicalRatios[0] = latestOffset + 1;
                hisRatio.lastUpdate = uint40(block.timestamp);
            }
        }
    }

    function averagePercentageRate(address addr, uint256 day)
        external
        view
        returns (int256)
    {
        require(day > 0 && day < 8, "day should be from 1 to 7");
        HistoricalRatios storage hisRatio = historicalRatios[addr];
        uint64 latestOffset = hisRatio.historicalRatios[0];

        int256 oldestRatio = int256(
            uint256(hisRatio.historicalRatios[((latestOffset - day) % 8) + 1])
        );
        int256 newestRatio = int256(
            uint256(hisRatio.historicalRatios[((latestOffset) % 8) + 1])
        );

        if (oldestRatio < newestRatio) {
            return 0;
        }

        return
            ((oldestRatio - newestRatio) * 10**20 * 365) /
            (oldestRatio * int256(day));
    }

    function getRatioFor(address token) public view override returns (uint256) {
        return _ratios[token];
    }

    function addOperator(address operator) public onlyOwner {
        require(operator != address(0x0), "operator must be non-zero");
        require(!_isOperator[operator], "already operator");
        _isOperator[operator] = true;
        emit OperatorAdded(operator);
    }

    function removeOperator(address operator) public onlyOwner {
        require(_isOperator[operator], "not an operator");
        delete _isOperator[operator];
        emit OperatorRemoved(operator);
    }

    modifier onlyOperator() {
        require(
            msg.sender == owner() || _isOperator[msg.sender],
            "Operator: not allowed"
        );
        _;
    }
}
