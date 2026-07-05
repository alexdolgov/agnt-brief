// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./interfaces/ILoanRegistry.sol";

contract LoanRegistry is AccessControlUpgradeable, ILoanRegistry {
    using SafeERC20 for IERC20;

    error AlreadyInUse();
    error InvalidCurrency();
    error InvalidAmount();
    error InvalidCollection();
    error InvalidInterest();
    error InvalidDuration();
    error InvalidExpiration();
    error RequestExpired();
    error InvalidNFTIndex();
    error InvalidTerms();
    error Unauthorized();

    event LendingRequestUpdated(uint256 indexed nonce, LendingRequest params);
    event LendingRequestDeleted(uint256 indexed nonce);
    event LoanRequestUpdated(
        address indexed collection,
        uint256 indexed index,
        LoanRequest params
    );
    event LoanRequestDeleted(address indexed collection, uint256 indexed index);
    event LoanCreated(
        address indexed collection,
        uint256 indexed nftIndex,
        Loan params
    );
    event LoanRepaid(
        address indexed collection,
        uint256 indexed nftIndex,
        uint256 repayAmount
    );
    event LoanClosed(address indexed collection, uint256 indexed nftIndex);
    event LoanRefinanced(
        address indexed collection,
        uint256 indexed nftIndex,
        Loan newTerms
    );
    event CurrencyAdded(uint8 indexed index, address indexed addr);

    bytes32 public constant CONTROLLER_ROLE = keccak256("CONTROLLER_ROLE");
    uint256 public constant MINIMUM_REFINANCE_INTEREST_CHANGE_BPS = 500;
    uint256 public constant NEW_LENDING_REQUEST_INDEX = type(uint256).max;

    uint256 public nextDepositNonce;
    uint8 public nextCurrencyIndex;

    mapping(uint8 => IERC20) public currencies;

    mapping(uint256 => LendingRequest) public lendingRequests;
    mapping(address => mapping(uint256 => LoanRequest)) public loanRequests;

    mapping(address => mapping(uint256 => Loan)) public loans;

    function initialize() external initializer {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @return True if the specified collateral doesn't have any active loans or loan requests, otherwise false
    /// @param _collection The collection address of the NFT to check
    /// @param _nftIndex The index of the NFT to check
    function isCollateralAvailable(
        address _collection,
        uint256 _nftIndex
    ) external view returns (bool) {
        return
            loans[_collection][_nftIndex].principal == 0 &&
            loanRequests[_collection][_nftIndex].principal == 0;
    }

    /// @return The accrued interest for the specified loan
    function calculateInterest(
        address _collection,
        uint256 _nftIndex
    ) external view returns (uint256) {
        ILoanRegistry.Loan memory _loan = loans[_collection][_nftIndex];

        return
            _calculateInterest(
                _loan.principal,
                _loan.baseInterestAmount,
                _loan.interestAprBps,
                _loan.minimumInterestBps,
                _loan.startTime,
                _loan.endTime
            );
    }

    /// @notice Function used to create or update lending requests (lenders offering a loan to borrowers)
    /// @param _nonce The nonce of the lending request (`NEW_LENDING_REQUEST_INDEX` to create a new one)
    /// @param _request The parameters of the request
    /// @param _transferFromController If true, tranfers the tokens from the controller
    /// @param _transferToController If true, tranfers any refunded tokens to the controller
    function createOrUpdateLendingRequest(
        uint256 _nonce,
        LendingRequest memory _request,
        bool _transferFromController,
        bool _transferToController
    ) external onlyRole(CONTROLLER_ROLE) {
        if (_request.owner == address(0)) revert Unauthorized();
        if (_request.principal == 0) revert InvalidAmount();
        if (_request.collection == address(0)) revert InvalidCollection();
        if (_request.durationDays == 0) revert InvalidDuration();
        if (_request.expiration <= block.timestamp) revert InvalidExpiration();

        if (
            !_isMinimumInterestValid(
                _request.minimumInterestBps,
                _request.principal,
                _request.interestAprBps,
                _request.durationDays
            )
        ) revert InvalidInterest();

        IERC20 _requestCurrency = currencies[_request.currency];
        if (address(_requestCurrency) == address(0)) revert InvalidCurrency();

        if (_nonce == NEW_LENDING_REQUEST_INDEX) {
            _nonce = nextDepositNonce;
            unchecked {
                nextDepositNonce = _nonce + 1;
            }

            _requestCurrency.safeTransferFrom(
                _transferFromController ? msg.sender : _request.owner,
                address(this),
                _request.principal
            );
        } else {
            LendingRequest memory _existingRequest = lendingRequests[_nonce];
            if (_request.owner != _existingRequest.owner) revert Unauthorized();

            uint256 _previousAmount = _existingRequest.principal;
            uint8 _previousCurrency = _existingRequest.currency;
            if (_previousCurrency != _request.currency) {
                currencies[_previousCurrency].safeTransfer(
                    _transferToController ? msg.sender : _request.owner,
                    _previousAmount
                );

                _requestCurrency.safeTransferFrom(
                    _transferFromController ? msg.sender : _request.owner,
                    address(this),
                    _request.principal
                );
            } else if (_previousAmount > _request.principal) {
                unchecked {
                    _requestCurrency.safeTransfer(
                        _transferToController ? msg.sender : _request.owner,
                        _previousAmount - _request.principal
                    );
                }
            } else if (_request.principal > _previousAmount) {
                unchecked {
                    _requestCurrency.safeTransferFrom(
                        _transferFromController ? msg.sender : _request.owner,
                        address(this),
                        _request.principal - _previousAmount
                    );
                }
            }
        }

        lendingRequests[_nonce] = _request;

        emit LendingRequestUpdated(_nonce, _request);
    }

    /// @notice Function used to delete lending requests
    /// @param _nonce The nonce of the request to delete
    /// @param _sender The sender of the request. Has to match `request.owner`
    /// @param _transferToController If true, transfers the tokens to the controller
    function deleteLendingRequest(
        uint256 _nonce,
        address _sender,
        bool _transferToController
    ) external onlyRole(CONTROLLER_ROLE) {
        LendingRequest memory _request = lendingRequests[_nonce];

        if (_request.owner != _sender) revert Unauthorized();

        currencies[_request.currency].safeTransfer(
            _transferToController ? msg.sender : _sender,
            _request.principal
        );

        delete lendingRequests[_nonce];
        emit LendingRequestDeleted(_nonce);
    }

    /// @notice Function used to create or update loan requests (borrowers requesting a loan from lenders)
    /// @param _collection The collection address of the NFT to use as collateral
    /// @param _nftIndex The index of the NFT to use as collateral
    /// @param _request The parameters of the request
    function createOrUpdateLoanRequest(
        address _collection,
        uint256 _nftIndex,
        LoanRequest memory _request
    ) external onlyRole(CONTROLLER_ROLE) {
        if (loans[_collection][_nftIndex].principal != 0) revert AlreadyInUse();

        if (_request.principal == 0) revert InvalidAmount();
        if (_request.durationDays == 0) revert InvalidDuration();
        if (_request.expiration <= block.timestamp) revert InvalidExpiration();

        if (
            !_isMinimumInterestValid(
                _request.minimumInterestBps,
                _request.principal,
                _request.interestAprBps,
                _request.durationDays
            )
        ) revert InvalidInterest();

        loanRequests[_collection][_nftIndex] = _request;

        emit LoanRequestUpdated(_collection, _nftIndex, _request);
    }

    /// @notice Function used to delete loan requests
    /// @param _collection The collection address of the NFT to delete the request for
    /// @param _nftIndex The index of the NFT to delete the request for
    function deleteLoanRequest(
        address _collection,
        uint256 _nftIndex
    ) external onlyRole(CONTROLLER_ROLE) {
        if (loanRequests[_collection][_nftIndex].expiration == 0)
            revert Unauthorized();

        delete loanRequests[_collection][_nftIndex];
        emit LoanRequestDeleted(_collection, _nftIndex);
    }

    /// @notice Function used by borrowers to accept lending requests. It works with both existing
    /// collateral deposits or new ones. NFTs with already active loans can use this function to
    /// refinance their loan by accepting another lending request
    /// @param _lendingNonce The nonce of the lending request
    /// @param _collection The collection address of the NFT to use as collateral
    /// @param _nftIndex The index of the NFT to use as collateral
    /// @param _transferFromController If true, transfers the tokens from the controller
    /// @param _transferToController If true, transfers the tokens to the controller
    /// @param _expectedTerms The keccak256 hash of the request's terms to ensure they can't be changed while the transaction is in-flight
    function takeLendingRequest(
        uint256 _lendingNonce,
        address _collection,
        uint256 _nftIndex,
        address _recipient,
        bool _transferFromController,
        bool _transferToController,
        bytes32 _expectedTerms
    ) external onlyRole(CONTROLLER_ROLE) {
        LendingRequest memory _request = lendingRequests[_lendingNonce];

        if (block.timestamp >= _request.expiration) revert RequestExpired();
        if (_collection != _request.collection) revert InvalidCollection();
        if (!_request.collectionWide && _nftIndex != _request.nftIndex)
            revert InvalidNFTIndex();

        bytes32 _currentTerms = keccak256(
            abi.encode(
                _request.principal,
                _request.interestAprBps,
                _request.minimumInterestBps,
                _request.durationDays,
                _request.currency
            )
        );

        if (_expectedTerms != _currentTerms) revert InvalidTerms();

        IERC20 _currency = currencies[_request.currency];

        Loan storage previousLoan = loans[_collection][_nftIndex];
        uint256 _previousPrincipal = previousLoan.principal;
        if (_previousPrincipal != 0) {
            if (previousLoan.currency != _request.currency)
                revert InvalidCurrency();

            uint256 _repayAmount = _previousPrincipal +
                _calculateInterest(
                    _previousPrincipal,
                    previousLoan.baseInterestAmount,
                    previousLoan.interestAprBps,
                    previousLoan.minimumInterestBps,
                    previousLoan.startTime,
                    previousLoan.endTime
                );

            if (_request.principal > _repayAmount) {
                unchecked {
                    _currency.safeTransfer(
                        _transferToController ? msg.sender : _recipient,
                        _request.principal - _repayAmount
                    );
                }
            } else if (_request.principal < _repayAmount) {
                unchecked {
                    _currency.safeTransferFrom(
                        _transferFromController ? msg.sender : _recipient,
                        address(this),
                        _repayAmount - _request.principal
                    );
                }
            }

            _currency.safeTransfer(previousLoan.depositOwner, _repayAmount);

            emit LoanRepaid(_collection, _nftIndex, _repayAmount);
        } else
            currencies[_request.currency].safeTransfer(
                _transferToController ? msg.sender : _recipient,
                _request.principal
            );

        Loan memory _loan = Loan({
            principal: _request.principal,
            baseInterestAmount: 0,
            depositOwner: _request.owner,
            interestAprBps: _request.interestAprBps,
            minimumInterestBps: _request.minimumInterestBps,
            currency: _request.currency,
            startTime: uint32(block.timestamp),
            endTime: uint32(block.timestamp + _request.durationDays * 1 days)
        });
        loans[_collection][_nftIndex] = _loan;

        delete lendingRequests[_lendingNonce];
        delete loanRequests[_collection][_nftIndex];

        emit LoanCreated(_collection, _nftIndex, _loan);
    }

    /// @notice Function used by lenders to accept loan requests. It works with both existing
    /// lender deposits or new ones
    /// @param _collection The collection address of the NFT used as collateral in the request
    /// @param _nftIndex The index of the NFT used as collateral in the request
    /// @param _lendingNonce The nonce of the lending request (if any, otherwise use `NEW_LENDING_REQUEST_INDEX`)
    /// @param _sender The lender address
    /// @param _recipient The borrower address
    /// @param _transferFromController If true, transfers the tokens from the controller
    function takeLoanRequest(
        address _collection,
        uint256 _nftIndex,
        uint256 _lendingNonce,
        address _sender,
        address _recipient,
        bool _transferFromController,
        bytes32 _expectedTerms
    ) external onlyRole(CONTROLLER_ROLE) {
        LoanRequest memory _request = loanRequests[_collection][_nftIndex];

        if (block.timestamp >= _request.expiration) revert RequestExpired();

        bytes32 _currentTerms = keccak256(
            abi.encode(
                _request.principal,
                _request.interestAprBps,
                _request.minimumInterestBps,
                _request.durationDays,
                _request.currency
            )
        );

        if (_expectedTerms != _currentTerms) revert InvalidTerms();

        Loan memory _loan = Loan({
            principal: _request.principal,
            baseInterestAmount: 0,
            depositOwner: _sender,
            interestAprBps: _request.interestAprBps,
            minimumInterestBps: _request.minimumInterestBps,
            currency: _request.currency,
            startTime: uint32(block.timestamp),
            endTime: uint32(block.timestamp + _request.durationDays * 1 days)
        });
        loans[_collection][_nftIndex] = _loan;

        delete loanRequests[_collection][_nftIndex];

        if (_lendingNonce == NEW_LENDING_REQUEST_INDEX) {
            _lendingNonce = nextDepositNonce;
            unchecked {
                nextDepositNonce = _lendingNonce + 1;
            }

            currencies[_request.currency].safeTransferFrom(
                _transferFromController ? msg.sender : _sender,
                _recipient,
                _request.principal
            );
        } else {
            LendingRequest storage lendingRequest = lendingRequests[
                _lendingNonce
            ];
            if (lendingRequest.owner != _sender) revert Unauthorized();
            if (_request.currency != lendingRequest.currency)
                revert InvalidCurrency();
            if (_request.principal != lendingRequest.principal)
                revert InvalidAmount();

            delete lendingRequests[_lendingNonce];

            currencies[_request.currency].safeTransfer(
                _recipient,
                _request.principal
            );
        }

        emit LoanCreated(_collection, _nftIndex, _loan);
    }

    /// @notice Function used by lenders to automatically refinance existing loans without the need
    /// for any borrower action if the conditions are met.
    /// The refinancer pays the accrued debt from the previous loan(s). The amount paid is refunded
    /// after the borrower repays.
    /// For this function to work, the new loan must respect the following conditions:
    /// - Needs to have the same currency
    /// - Needs to have the same principal amount
    /// - The loan has to end after the previous one
    /// - `_request.minimumInterestBps` must be 0 to prevent unwanted additional costs for the borrower
    /// - `_request.interestAprBps` must be lower than the previous one by at least `MINIMUM_REFINANCE_INTEREST_CHANGE_BPS`
    /// @param _collection The collection address of the NFT used as collateral in the loan
    /// @param _nftIndex The index of the NFT used as collateral in the loan
    /// @param _request The new loan terms
    /// @param _transferFromController If true, transfers the tokens from the controller
    function refinanceLoan(
        address _collection,
        uint256 _nftIndex,
        LendingRequest memory _request,
        bool _transferFromController
    ) external onlyRole(CONTROLLER_ROLE) {
        Loan memory _previousLoan = loans[_collection][_nftIndex];
        if (_previousLoan.principal == 0) revert Unauthorized();

        if (_request.owner == address(0)) revert Unauthorized();
        if (_request.currency != _previousLoan.currency)
            revert InvalidCurrency();
        if (_request.principal != _previousLoan.principal)
            revert InvalidAmount();

        uint256 _endTime = block.timestamp + _request.durationDays * 1 days;
        if (_endTime < _previousLoan.endTime || _endTime > type(uint32).max)
            revert InvalidDuration();

        if (_request.minimumInterestBps != 0) revert InvalidInterest();
        if (
            _request.interestAprBps >=
            _previousLoan.interestAprBps -
                ((_previousLoan.interestAprBps *
                    MINIMUM_REFINANCE_INTEREST_CHANGE_BPS) / 10_000) ||
            _request.interestAprBps == 0
        ) revert InvalidInterest();

        uint256 _interest = _calculateInterest(
            _previousLoan.principal,
            _previousLoan.baseInterestAmount,
            _previousLoan.interestAprBps,
            _previousLoan.minimumInterestBps,
            _previousLoan.startTime,
            _previousLoan.endTime
        );

        Loan memory _loan = Loan({
            principal: _request.principal,
            baseInterestAmount: _interest,
            depositOwner: _request.owner,
            interestAprBps: _request.interestAprBps,
            minimumInterestBps: 0,
            currency: _request.currency,
            startTime: uint32(block.timestamp),
            endTime: uint32(_endTime)
        });

        loans[_collection][_nftIndex] = _loan;

        currencies[_request.currency].safeTransferFrom(
            _transferFromController ? msg.sender : _request.owner,
            _previousLoan.depositOwner,
            _request.principal + _interest
        );

        emit LoanRefinanced(_collection, _nftIndex, _loan);
    }

    /// @notice Allows borrowers to repay active loans. Requires fully repaying debt
    /// @param _collection The collection address of the NFT used as collateral in the loan
    /// @param _nftIndex The index of the NFT used as collateral in the loan
    /// @param _sender The borrower address
    /// @param _transferFromController If true, transfers the tokens from the controller
    function repayLoan(
        address _collection,
        uint256 _nftIndex,
        address _sender,
        bool _transferFromController
    ) external onlyRole(CONTROLLER_ROLE) {
        ILoanRegistry.Loan memory _loan = loans[_collection][_nftIndex];
        if (_loan.principal == 0) revert Unauthorized();

        uint256 _repayAmount = _loan.principal +
            _calculateInterest(
                _loan.principal,
                _loan.baseInterestAmount,
                _loan.interestAprBps,
                _loan.minimumInterestBps,
                _loan.startTime,
                _loan.endTime
            );

        delete loans[_collection][_nftIndex];

        currencies[_loan.currency].safeTransferFrom(
            _transferFromController ? msg.sender : _sender,
            _loan.depositOwner,
            _repayAmount
        );

        emit LoanRepaid(_collection, _nftIndex, _repayAmount);
    }

    /// @notice Allows the controller to forcefully close a loan without requiring a repayment.
    /// Used in liquidations
    /// @param _collection The collection address of the NFT used as collateral
    /// @param _nftIndex The index of the NFT used as collateral
    /// @param _sender Has to match `loan.depositOwner`
    function closeLoan(
        address _collection,
        uint256 _nftIndex,
        address _sender
    ) external onlyRole(CONTROLLER_ROLE) {
        Loan storage loan = loans[_collection][_nftIndex];
        if (loan.depositOwner != _sender || block.timestamp < loan.endTime)
            revert Unauthorized();

        delete loans[_collection][_nftIndex];

        emit LoanClosed(_collection, _nftIndex);
    }

    /// @notice Allows the admin to add a supported currency
    /// @param _addr The address of the currency to add
    function addCurrency(address _addr) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_addr == address(0)) revert InvalidCurrency();

        uint8 _index = nextCurrencyIndex;
        unchecked {
            nextCurrencyIndex = _index + 1;
        }
        currencies[_index] = IERC20(_addr);

        emit CurrencyAdded(_index, _addr);
    }

    //make sure that the total interest (represented as APR) over the loan duration is greater than the minimum
    //(represented as a % of the principal)
    function _isMinimumInterestValid(
        uint16 _minimumInterestBps,
        uint256 _principal,
        uint16 _interestAprBps,
        uint16 _durationDays
    ) internal view returns (bool) {
        if (block.timestamp > type(uint32).max) return false;
        if (_minimumInterestBps == 0) return true;

        uint256 _totalInterest = _calculateInterest(
            _principal,
            0,
            _interestAprBps,
            0,
            uint32(block.timestamp - _durationDays * 1 days),
            uint32(block.timestamp)
        );
        uint256 _minimumInterest = (_principal * _minimumInterestBps) / 10_000;

        return _totalInterest > _minimumInterest;
    }

    function _calculateInterest(
        uint256 _principal,
        uint256 _baseInterest,
        uint16 _interestBps,
        uint16 _minInterestBps,
        uint32 _startTime,
        uint32 _endTime
    ) internal view returns (uint256) {
        uint256 _elapsedTime;
        unchecked {
            _elapsedTime =
                (block.timestamp > _endTime ? _endTime : block.timestamp) -
                _startTime;
        }

        uint256 _interest = (_principal * _interestBps * _elapsedTime) /
            365 days /
            10_000;
        uint256 _minInterest = (_principal * _minInterestBps) / 10_000;
        if (_minInterest > _interest) _interest = _minInterest;

        return _baseInterest + _interest;
    }
}
