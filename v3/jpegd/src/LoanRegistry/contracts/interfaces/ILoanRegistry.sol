// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

interface ILoanRegistry {
    struct LendingRequest {
        uint256 principal;
        uint256 nftIndex;
        address owner;
        address collection;
        bool collectionWide;
        uint16 interestAprBps;
        uint16 minimumInterestBps;
        uint16 durationDays;
        uint8 currency;
        uint32 expiration;
    }

    struct LoanRequest {
        uint256 principal;
        uint16 interestAprBps;
        uint16 minimumInterestBps;
        uint16 durationDays;
        uint8 currency;
        uint32 expiration;
    }

    struct Loan {
        uint256 principal;
        uint256 baseInterestAmount;
        address depositOwner;
        uint16 interestAprBps;
        uint16 minimumInterestBps;
        uint8 currency;
        uint32 startTime;
        uint32 endTime;
    }

    function isCollateralAvailable(
        address _collection,
        uint256 _nftIndex
    ) external view returns (bool);

    function createOrUpdateLoanRequest(
        address _collection,
        uint256 _nftIndex,
        LoanRequest memory _request
    ) external;

    function createOrUpdateLendingRequest(
        uint256 _nonce,
        LendingRequest memory _request,
        bool _transferFromController,
        bool _transferToController
    ) external;

    function deleteLendingRequest(
        uint256 _nonce,
        address _sender,
        bool _transferToController
    ) external;

    function deleteLoanRequest(address _collection, uint256 _nftIndex) external;

    function takeLendingRequest(
        uint256 _lendingNonce,
        address _collection,
        uint256 _nftIndex,
        address _recipient,
        bool _transferFromController,
        bool _transferToController,
        bytes32 _expectedTerms
    ) external;

    function takeLoanRequest(
        address _collection,
        uint256 _nftIndex,
        uint256 _lendingNonce,
        address _sender,
        address _recipient,
        bool _transferFromController,
        bytes32 _expectedTerms
    ) external;

    function refinanceLoan(
        address _collection,
        uint256 _nftIndex,
        LendingRequest memory _request,
        bool _transferFromController
    ) external;

    function repayLoan(
        address _collection,
        uint256 _nftIndex,
        address _sender,
        bool _transferFromController
    ) external;

    function closeLoan(
        address _collection,
        uint256 _nftIndex,
        address _sender
    ) external;
}
