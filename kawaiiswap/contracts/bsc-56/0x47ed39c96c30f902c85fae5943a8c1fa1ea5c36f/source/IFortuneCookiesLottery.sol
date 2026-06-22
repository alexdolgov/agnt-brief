// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IFortuneCookiesLottery {
    /**
     * @notice Buy tickets for the current lottery
     * @param _lotteryId: lotteryId
     * @param _tickeAmount: amount of tickets to buy
     * @dev Callable by users
     */
    function buyTickets(uint256 _lotteryId, uint256 _tickeAmount) external;

    /**
     * @notice Claim a set of winning tickets for a lottery
     * @param _lotteryId: lottery id
     * @param _ticketIds: array of ticket ids
     * @dev Callable by users only, not contract!
     */
    function claimTickets(
        uint256 _lotteryId,
        uint256[] calldata _ticketIds
    ) external;

    /**
     * @notice Close lottery
     * @param _lotteryId: lottery id
     * @dev Callable by operator
     */
    function closeLottery(uint256 _lotteryId) external;

    /**
     * @notice Draw the final number, calculate reward in CALCIFIRE per group, and make lottery claimable
     * @param _lotteryId: lottery id
     * @param _autoInjection: reinjects funds into next lottery (vs. withdrawing all)
     * @dev Callable by operator
     */
    function drawFinalNumberAndMakeLotteryClaimable(uint256 _lotteryId, bool _autoInjection) external;

    /**
     * @notice Inject funds
     * @param _lotteryId: lottery id
     * @param _amount: amount to inject in CALCIFIRE token
     * @dev Callable by operator
     */
    function injectFunds(uint256 _lotteryId, uint256 _amount) external;

    /**
     * @notice Start the lottery
     * @dev Callable by operator
     * @param _endTime: endTime of the lottery
     * @param _priceTicketInCalcifire: price of a ticket in CALCIFIRE
     * @param _discountDivisor: the divisor to calculate the discount magnitude for bulks
     * @param _rewardsBreakdown: breakdown of rewards per bracket (must sum to 10,000)
     * @param _treasuryFee: treasury fee (10,000 = 100%, 100 = 1%)
     * @param _burnFee: % transferred to burn address
     */
    function startLottery(
        uint256 _endTime,
        uint256 _priceTicketInCalcifire,
        uint256 _discountDivisor,
        uint256[5] calldata _rewardsBreakdown,
        uint256 _treasuryFee,
        uint256 _burnFee
    ) external;

    /**
     * @notice View current lottery id
     */
    function viewCurrentLotteryId() external returns (uint256);
}
