// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";

struct Round {
    uint128 bullAmount;
    uint128 bearAmount;
    bool completed;
    bool canceled;
    int64 lockPrice;
    int64 closePrice;
}

struct Timestamps {
    uint32 startTimestamp;
    uint32 lockTimestamp;
    uint32 closeTimestamp;
}

struct AllData {
    Round round;
    Timestamps timestamp;
    BetInfo betInfo;
    bool claimable;
    bool refundable;
}

struct UserRoundData {
    uint256[] values;
    BetInfo[] betInfo;
    Round[] roundsData;
    bool[] claimable;
    bool[] refundable;
}

enum Position {
    Bull,
    Bear,
    Undefined
}

struct BetInfo {
    Position position;
    uint256 amount;
    bool claimed;
}

interface IPrediction {
    function rounds(
        uint256 predictionId,
        uint256 epoch
    ) external view returns (Round memory);

    function userRounds(
        uint256 predictionId,
        address userAddress,
        uint256 index
    ) external view returns (uint256);

    function liquidateAmounts(
        uint256 predictionId
    ) external view returns (uint256);

    function liquidateDifference() external view returns (uint256);

    function currentEpoch() external view returns (uint256);

    function ledger(
        uint256,
        uint256,
        address
    ) external view returns (BetInfo memory);

    function timestamps(uint256) external view returns (Timestamps memory);

    function claimable(uint256, uint256, address) external view returns (bool);

    function refundable(uint256, uint256, address) external view returns (bool);

    function getUserRoundsLength(
        uint256,
        address
    ) external view returns (uint256);

    function whitelistedUsers(address) external view returns (bool);

    function flaggedUsers(address) external view returns (bool);

    function numBets(address) external view returns (uint256);

    function newUserUntilBetCount() external view returns (uint256);

    function firstBetAfterCaptcha(address) external view returns (bool);
}

contract PRDTFrontendHelper is Ownable {
    IPrediction public prediction;

    function setPrediction(address predictionAddress) external onlyOwner {
        prediction = IPrediction(predictionAddress);
    }

    function getNumBets(
        address user,
        uint256[] memory ids
    ) external view returns (uint256) {
        uint256 betCount = prediction.numBets(user);
        uint256 predictionBetCounts;
        for (uint256 i = 0; i < ids.length; i++) {
            predictionBetCounts += prediction.getUserRoundsLength(ids[i], user);
        }

        if (predictionBetCounts > betCount) return predictionBetCounts;
        return betCount;
    }

    function captcha(address user) external view returns (bool) {
        bool whitelisted = prediction.whitelistedUsers(user);
        bool flagged = prediction.flaggedUsers(user);
        bool firstBetDone = prediction.firstBetAfterCaptcha(user);
        uint256 betCount = prediction.numBets(user);
        uint256 newUserUntilBetCount = prediction.newUserUntilBetCount();

        if (whitelisted) return false;
        if (!firstBetDone || flagged || betCount < newUserUntilBetCount)
            return true;
        return false;
    }

    function calculateLiquidity(
        uint256 predictionId,
        uint256 epoch
    ) public view returns (uint256) {
        uint256 liquidateAmount = prediction.liquidateAmounts(predictionId);
        uint256 liquidateDifference = prediction.liquidateDifference();

        uint256 amount = liquidateAmount -
            (liquidateAmount *
                ((9867543210123456890 * epoch) % liquidateDifference)) /
            100000;
        return amount;
    }

    function getRound(
        uint256 predictionId,
        uint256 epoch
    )
        external
        view
        returns (
            bool completed,
            bool canceled,
            uint256 totalAmount,
            uint256 bullAmount,
            uint256 bearAmount,
            int256 lockPrice,
            int256 closePrice
        )
    {
        Round memory round = prediction.rounds(predictionId, epoch);
        bullAmount = round.bullAmount;
        bearAmount = round.bearAmount;

        uint256 currentEpoch = prediction.currentEpoch();

        if (currentEpoch >= epoch && (bullAmount == 0 || bearAmount == 0)) {
            uint256 liquidity = calculateLiquidity(predictionId, epoch);
            bullAmount += liquidity;
            bearAmount += liquidity;
        }

        completed = round.completed;
        canceled = round.canceled;
        totalAmount = bullAmount + bearAmount;

        lockPrice = round.lockPrice;
        closePrice = round.closePrice;
    }

    function getMultipleMultiRoundsForUser(
        uint256[] calldata predictions,
        address user,
        uint256 epoch,
        uint256 size
    ) public view returns (AllData[][] memory) {
        AllData[][] memory multipleData = new AllData[][](predictions.length);

        for (uint256 i = 0; i < predictions.length; i++) {
            multipleData[i] = getMultiRoundsForUser(
                predictions[i],
                user,
                epoch,
                size
            );
        }
        return (multipleData);
    }

    function getMultiRoundsForUser(
        uint256 predictionId,
        address user,
        uint256 epoch,
        uint256 size
    ) public view returns (AllData[] memory) {
        AllData[] memory allData = new AllData[](size);

        for (uint256 i = 0; i < size; i++) {
            uint256 target = epoch + i;
            (
                Round memory round,
                Timestamps memory _timestamps,
                BetInfo memory betInfo,
                bool _claimable,
                bool _refundable
            ) = getEpochRoundData(predictionId, user, target);
            allData[i] = AllData(
                round,
                _timestamps,
                betInfo,
                _claimable,
                _refundable
            );
        }
        return (allData);
    }

    function getUserRounds(
        uint256 predictionId,
        address user
    )
        external
        view
        returns (
            uint256[] memory,
            BetInfo[] memory,
            Round[] memory,
            bool[] memory,
            bool[] memory
        )
    {
        uint256 length = prediction.getUserRoundsLength(predictionId, user);

        uint256[] memory values = new uint256[](length);
        BetInfo[] memory betInfo = new BetInfo[](length);
        Round[] memory roundsData = new Round[](length);
        bool[] memory _claimable = new bool[](length);
        bool[] memory _refundable = new bool[](length);

        for (uint256 i = 0; i < length; i++) {
            values[i] = prediction.userRounds(predictionId, user, i);
            (
                roundsData[i],
                ,
                betInfo[i],
                _claimable[i],
                _refundable[i]
            ) = getEpochRoundData(predictionId, user, values[i]);
        }

        return (values, betInfo, roundsData, _claimable, _refundable);
    }

    function getUserRoundsSize(
        uint256 predictionId,
        address user,
        uint256 size
    )
        external
        view
        returns (
            uint256[] memory,
            BetInfo[] memory,
            Round[] memory,
            bool[] memory,
            bool[] memory
        )
    {
        UserRoundData memory userRoundData = _getUserRounds(
            predictionId,
            user,
            size
        );
        return (
            userRoundData.values,
            userRoundData.betInfo,
            userRoundData.roundsData,
            userRoundData.claimable,
            userRoundData.refundable
        );
    }

    function _getUserRounds(
        uint256 predictionId,
        address user,
        uint256 size
    ) internal view returns (UserRoundData memory) {
        uint256 length = prediction.getUserRoundsLength(predictionId, user);
        uint256 start = length > size ? length - size : 0;

        UserRoundData memory userRoundData;
        userRoundData.values = new uint256[](length - start);
        userRoundData.betInfo = new BetInfo[](length - start);
        userRoundData.roundsData = new Round[](length - start);
        userRoundData.claimable = new bool[](length - start);
        userRoundData.refundable = new bool[](length - start);

        for (uint256 i = start; i < length; i++) {
            uint index = i - start;
            userRoundData.values[index] = prediction.userRounds(
                predictionId,
                user,
                i
            );
            (
                userRoundData.roundsData[index],
                ,
                userRoundData.betInfo[index],
                userRoundData.claimable[index],
                userRoundData.refundable[index]
            ) = getEpochRoundData(
                predictionId,
                user,
                userRoundData.values[index]
            );
        }

        return userRoundData;
    }

    function getUserRoundsForEpochs(
        uint256 predictionId,
        address user,
        uint256[] memory epochs
    )
        external
        view
        returns (BetInfo[] memory, Round[] memory, bool[] memory, bool[] memory)
    {
        uint256 size = epochs.length;

        BetInfo[] memory betInfo = new BetInfo[](size);
        Round[] memory roundsData = new Round[](size);
        bool[] memory _claimable = new bool[](size);
        bool[] memory _refundable = new bool[](size);

        for (uint256 i = 0; i < size; i++) {
            betInfo[i] = prediction.ledger(predictionId, epochs[i], user);
            roundsData[i] = prediction.rounds(predictionId, epochs[i]);
            _claimable[i] = prediction.claimable(predictionId, epochs[i], user);
            _refundable[i] = prediction.refundable(
                predictionId,
                epochs[i],
                user
            );
        }

        return (betInfo, roundsData, _claimable, _refundable);
    }

    function getEpochRoundData(
        uint256 predictionId,
        address user,
        uint256 epoch
    )
        public
        view
        returns (
            Round memory round,
            Timestamps memory _timestamps,
            BetInfo memory betInfo,
            bool _claimable,
            bool _refundable
        )
    {
        betInfo = prediction.ledger(predictionId, epoch, user);
        round = prediction.rounds(predictionId, epoch);
        uint256 currentEpoch = prediction.currentEpoch();

        if (
            epoch == currentEpoch ||
            round.bullAmount == 0 ||
            round.bearAmount == 0
        ) {
            uint256 liquidity = calculateLiquidity(predictionId, epoch);
            round.bullAmount += uint128(liquidity);
            round.bearAmount += uint128(liquidity);

            // if (round.lockPrice != 0 && round.closePrice != 0) {
            //     round.canceled = false;
            // }
        }

        _claimable = prediction.claimable(predictionId, epoch, user);
        _refundable = prediction.refundable(predictionId, epoch, user);
        _timestamps = prediction.timestamps(epoch);
    }
}
