// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IMapleWithdrawalManager {
    /**
     *  @dev    Returns the withdrawal requiestID of the account
     *  @param  _account Identifier of the withdrawal request.
     *  @return requestId_     Address of the share owner.
     */
    function requestIds(address _account) external view returns (uint128 requestId_);

    /**
     *  @dev    Returns the owner and amount of shares associated with a withdrawal request.
     *  @param  _requestId Identifier of the withdrawal request.
     *  @return owner_     Address of the share owner.
     *  @return shares_    Amount of shares pending redemption.
     */
    function requests(uint128 _requestId) external view returns (address owner_, uint256 shares_);
}