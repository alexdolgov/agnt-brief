// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "hardhat/console.sol";
import "../tokens/Leaf.sol";
import "../utils/SafeMath.sol";


contract GranaryV2 is OwnableUpgradeable {
    using SafeMath for uint256;

    event Keep(address indexed beneficiary, uint256 amount, uint timestamp);
    event Release(address indexed beneficiary, uint256 amount, uint timestamp);

    struct Record {
        uint createdTimestamp;
        uint releaseTimestamp;
        uint256 amount;
    }

    IERC20Upgradeable public keepToken;
    uint256 public keepPeriodInSecond;
    mapping(address => Record[]) public keepRecords;

    uint256 constant SECOND_PER_DAY = 86400;

    // V2
    // record of unlock date - 1 record per day
    mapping(address => uint256[]) public firstReleaseRecords;
    mapping(address => uint256[]) public secondReleaseRecords;
    // bene address map to unlock date and unlock amount(accumulative)
    mapping(address => mapping(uint256 => uint256)) public beneficiaryRecords;

    function initialize(IERC20Upgradeable token, uint256 keepPeriodInDay) external {
        __Ownable_init();
        
        keepToken = token;
        keepPeriodInSecond = keepPeriodInDay.mul(SECOND_PER_DAY);
    }

    function getKeepRecordSize(address beneficiary) external view returns (uint256 size) {
        size = keepRecords[beneficiary].length;
        size = size.add(firstReleaseRecords[beneficiary].length);
        size = size.add(secondReleaseRecords[beneficiary].length);
    }

    // V1 - obsolete
    function getKeepRecords(address beneficiary) external view returns (Record[] memory records) {
        return keepRecords[beneficiary];
    }

    // function getKeepRecordsV2(address beneficiary) external view returns (uint256[] memory dayRecords, uint256[] memory dayBalance ) {
    //     uint256 length = firstReleaseRecords[beneficiary].length.add(secondReleaseRecords[beneficiary].length);
    //     dayRecords = new uint256[](length);
    //     dayBalance = new uint256[](length);

    //     if (keepRecords[beneficiary].length == 0) {
    //         for (uint256 index = 0; index < firstReleaseRecords[beneficiary].length; index ++) {
    //             dayRecords[index] = firstReleaseRecords[beneficiary][index];
    //             dayBalance[index] = dayBalance[index].add(beneficiaryRecords[beneficiary][firstReleaseRecords[beneficiary][index]]);
    //         }

    //         uint256 startingLenght = firstReleaseRecords[beneficiary].length;
    //         for (uint256 index = 0; index < secondReleaseRecords[beneficiary].length; index ++) {
    //             dayRecords[index + startingLenght] = secondReleaseRecords[beneficiary][index];
    //             dayBalance[index] = dayBalance[index].add(beneficiaryRecords[beneficiary][secondReleaseRecords[beneficiary][index]]);
    //         }
    //     } else {
    //         dayRecords = new uint256[](keepRecords[beneficiary].length);
    //         dayBalance = new uint256[](keepRecords[beneficiary].length);
    //         // Handle V1 
    //         uint256 processingDay = 0;
    //         uint256 processingbBalance = 0;
    //         uint256 processingIndex = 0;

    //         uint256 keepActualSize = keepRecords[beneficiary].length / 2;
    //         for (uint256 index = 0; index < keepActualSize ; index ++) {
    //             Record memory record = keepRecords[beneficiary][index];
    //             uint256 releaseDay = getDay(record.releaseTimestamp);
    //             uint256 releaseBalance = record.amount;

    //             if (processingDay == 0) {
    //                 processingDay = releaseDay;
    //                 processingbBalance = releaseBalance;
    //             } else if (processingDay == releaseDay) {
    //                 processingbBalance = processingbBalance.add(releaseBalance)
    //             } else if (processingDay != releaseDay) {
    //                 dayRecords[processingIndex] = processingDay;
    //                 dayBalance[processingIndex] = processingbBalance;
    //             }

    //             if (processingDay != 0 && processingDay != releaseDay) {
    //                 dayRecords[processingIndex] = processingDay;
    //                 dayBalance[processingIndex] = processingbBalance;

    //                 processingDay = releaseDay;
    //                 processingbBalance = releaseBalance;
    //                 processingIndex += 1;
    //             }


    //             if ( beneficiaryRecords[beneficiary][releaseDay] == 0 ){
    //                 firstReleaseRecords[beneficiary].push(releaseDay);
    //             }
    //             beneficiaryRecords[beneficiary][releaseDay] = beneficiaryRecords[beneficiary][releaseDay].add(record.amount);
    //         }

    //         for (uint256 index = 0; index < keepActualSize ; index ++) {
    //             Record memory record = keepRecords[beneficiary][index+keepActualSize];
    //             uint256 releaseDay = getDay(record.releaseTimestamp);
    //             if ( beneficiaryRecords[beneficiary][releaseDay] == 0 ){
    //                 secondReleaseRecords[beneficiary].push(releaseDay);
    //             }
    //             beneficiaryRecords[beneficiary][releaseDay] = beneficiaryRecords[beneficiary][releaseDay].add(record.amount);
    //         }
    //     }
    // }

    function getKeepBalance(address beneficiary) external view returns (uint256 keepBalance) {
        keepBalance = 0;

        for (uint256 index = 0; index < firstReleaseRecords[beneficiary].length; index ++) {
            uint256 day = firstReleaseRecords[beneficiary][index];
            keepBalance = keepBalance.add(beneficiaryRecords[beneficiary][day]);
        }   

        for (uint256 index = 0; index < secondReleaseRecords[beneficiary].length; index ++) {
            uint256 day = secondReleaseRecords[beneficiary][index];
            keepBalance = keepBalance.add(beneficiaryRecords[beneficiary][day]);
        }   

        // from V1
        for (uint256 index = 0; index < keepRecords[beneficiary].length; index ++) {
            keepBalance = keepBalance.add(keepRecords[beneficiary][index].amount);
        }
    }

    function getReleasableBalance(address beneficiary) external view returns (uint256 releasableBalance) {
        releasableBalance = 0;

        for (uint256 index = 0; index < keepRecords[beneficiary].length; index ++) {
            Record storage record = keepRecords[beneficiary][index];
            if(record.releaseTimestamp <= block.timestamp) {
                releasableBalance = releasableBalance.add(record.amount);
            } else {
                break;
            }
        }      

        uint256 currentDay = getDay(block.timestamp);
        for (uint256 index = 0; index < firstReleaseRecords[beneficiary].length; index ++) {
            uint256 day = firstReleaseRecords[beneficiary][index];
            if(day <= currentDay) {
                releasableBalance = releasableBalance.add(beneficiaryRecords[beneficiary][day]);
            }
        }   
        
        for (uint256 index = 0; index < secondReleaseRecords[beneficiary].length; index ++) {
            uint256 day = secondReleaseRecords[beneficiary][index];
            if(day <= currentDay) {
                releasableBalance = releasableBalance.add(beneficiaryRecords[beneficiary][day]);
            }
        }  
    }

    function keep(address beneficiary, uint256 amount) external {
        require(beneficiary != address(0), "Cannot keep record for zero address");

        migrateV2(beneficiary);

        keepToken.transferFrom(msg.sender, address(this), amount);

        uint256 keepAmount = amount.div(2);
        uint256 firstReleaseDay = getDay(block.timestamp.add(keepPeriodInSecond));
        uint256 secondReleaseDay = getDay(block.timestamp.add(keepPeriodInSecond.mul(2)));

        // if day not exist, push to array
        if ( beneficiaryRecords[beneficiary][firstReleaseDay] == 0 ){
            firstReleaseRecords[beneficiary].push(firstReleaseDay);
        }
        if ( beneficiaryRecords[beneficiary][secondReleaseDay] == 0 ){
            secondReleaseRecords[beneficiary].push(secondReleaseDay);
        }

        // add keep amount to beneficiaryRecords per day, whether new or existing
        beneficiaryRecords[beneficiary][firstReleaseDay] = beneficiaryRecords[beneficiary][firstReleaseDay].add(keepAmount);
        beneficiaryRecords[beneficiary][secondReleaseDay] = beneficiaryRecords[beneficiary][secondReleaseDay].add(keepAmount);

        emit Keep(beneficiary, amount, block.timestamp);
    }

    function release(address beneficiary) external {
        require(
            keepRecords[beneficiary].length > 0 ||
            firstReleaseRecords[beneficiary].length > 0 || 
            secondReleaseRecords[beneficiary].length > 0, "No keep record available");

        migrateV2(beneficiary);

        uint256 releasingBalance = 0;
        uint256 currentDay = getDay(block.timestamp);

        uint256[] memory existingFirstRecords = firstReleaseRecords[beneficiary];
        delete firstReleaseRecords[beneficiary];
        for (uint256 index = 0; index < existingFirstRecords.length; index ++) {
            uint256 day = existingFirstRecords[index];
            if(day <= currentDay) {
                releasingBalance = releasingBalance.add(existingFirstRecords[day]);
            } else {
                firstReleaseRecords[beneficiary].push(day);
            }
        }   
        
        uint256[] memory existingSecondRecords = secondReleaseRecords[beneficiary];
        delete secondReleaseRecords[beneficiary];
        for (uint256 index = 0; index < existingSecondRecords.length; index ++) {
            uint256 day = existingSecondRecords[index];
            if(day <= currentDay) {
                releasingBalance = releasingBalance.add(existingSecondRecords[day]);
            } else {
                secondReleaseRecords[beneficiary].push(day);
            }
        }

        require(releasingBalance > 0, "No release balance available");
        keepToken.transfer(beneficiary, releasingBalance);
        emit Release(beneficiary, releasingBalance, block.timestamp);
    }

    //================================
    // Only owner method
    //================================

    function setKeepPeriod(uint256 numberOfDay) external onlyOwner {
        keepPeriodInSecond = numberOfDay.mul(SECOND_PER_DAY);
    }

    function getDay(uint256 timestamp) internal pure returns (uint256 day) {
        return timestamp.div(SECOND_PER_DAY);
    }

    function migrateV2(address beneficiary) internal {
        if (keepRecords[beneficiary].length > 0 ){
            return;
        }
        
        uint256 keepActualSize = keepRecords[beneficiary].length / 2;
        for (uint256 index = 0; index < keepActualSize ; index ++) {
            Record memory record = keepRecords[beneficiary][index];
            uint256 releaseDay = getDay(record.releaseTimestamp);
            if ( beneficiaryRecords[beneficiary][releaseDay] == 0 ){
                firstReleaseRecords[beneficiary].push(releaseDay);
            }
            beneficiaryRecords[beneficiary][releaseDay] = beneficiaryRecords[beneficiary][releaseDay].add(record.amount);
        }
        for (uint256 index = 0; index < keepActualSize ; index ++) {
            Record memory record = keepRecords[beneficiary][index+keepActualSize];
            uint256 releaseDay = getDay(record.releaseTimestamp);
            if ( beneficiaryRecords[beneficiary][releaseDay] == 0 ){
                secondReleaseRecords[beneficiary].push(releaseDay);
            }
            beneficiaryRecords[beneficiary][releaseDay] = beneficiaryRecords[beneficiary][releaseDay].add(record.amount);
        }
        delete keepRecords[beneficiary];
    }
}