// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.
pragma solidity ^0.8.20;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {ILeverageRouter} from "src/interfaces/leverage/ILeverageRouter.sol";
import {IjGMIndex} from "src/interfaces/gm/IjGMIndex.sol";
import {ReentrancyGuard} from "openzeppelin-contracts/utils/ReentrancyGuard.sol";
import {ILeverageRouter} from "src/interfaces/leverage/ILeverageRouter.sol";
import {IIndividualBuffer} from "src/interfaces/IIndividualBuffer.sol";

/**
 * @title IndividualBuffer
 * @author JonesDAO
 * @notice Collect deposits from users and mint jGM tokens after a certain time.
 */
contract IndividualBuffer is ReentrancyGuard, IIndividualBuffer {
    /// @dev Contract to interact with jGM.
    ILeverageRouter public immutable leverageRouter;

    /// @dev Native USDC token contract.
    address public constant NATIVE_USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;

    /// @dev WETH token contract.
    address public constant WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;

    address public jGM;

    /// @dev Nonce -> Deposit
    mapping(uint256 => Deposit) public deposits;

    mapping(uint256 => Withdrawal) public withdrawals;

    mapping(address => bool) public allowedContract;

    uint256 public nonce;
    uint256 public nonceWithdraw;
    address private immutable _owner;
    address public keeper;

    bool public paused;

    constructor(address _keeper, ILeverageRouter _leverageRouter, address _jGM) {
        _owner = msg.sender;
        keeper = _keeper;
        jGM = _jGM;
        leverageRouter = _leverageRouter;
    }

    /**
     * @notice Deposit USDC and join the buffer, where keeper will try to mint jGM tokens and send them to the receiver.
     * @param _deposit Deposit struct
     * @dev This function requires receiver to be the caller.
     */
    function deposit(Deposit memory _deposit) external payable nonReentrant {
        require(_deposit.receiver == msg.sender, "IndividualBuffer: not receiver");

        IERC20(NATIVE_USDC).transferFrom(msg.sender, address(this), _deposit.usdcAmount);

        _deposit.ethAmount = msg.value;

        _performDeposit(_deposit);
    }

    /**
     * @notice Deposit USDC and join the buffer, where keeper will try to mint jGM tokens and send them to the receiver. (With custom receiver)
     * @param _deposit Deposit struct
     * @dev The difference between this function and deposit is that this function is called by a contract.
     *      And `receiver` can be an address other than the caller.
     */
    function depositInternal(Deposit memory _deposit) external payable {
        require(allowedContract[msg.sender], "IndividualBuffer: not allowed contract");

        IERC20(NATIVE_USDC).transferFrom(msg.sender, address(this), _deposit.usdcAmount);

        _deposit.ethAmount = msg.value;

        _performDeposit(_deposit);
    }

    /**
     * @notice Keeper executes the deposit.
     * @param _nonce The nonce of the deposit.
     * @param _gmData The data to be passed to the leverageRouter.
     */
    function executeDeposit(uint256 _nonce, bytes calldata _gmData) external {
        require(msg.sender == keeper, "IndividualBuffer: not keeper");

        Deposit storage deposit_ = deposits[_nonce];

        IERC20(NATIVE_USDC).approve(address(leverageRouter), deposit_.usdcAmount);
        leverageRouter.createDeposit{value: deposit_.ethAmount}(deposit_.usdcAmount, deposit_.receiver, _gmData);

        emit BotDepositExecuted(nonce, deposit_);

        delete deposits[_nonce];
    }

    function _performDeposit(Deposit memory _deposit) private {
        require(!paused, "IndividualBuffer: paused");
        require(_deposit.usdcAmount > 0, "IndividualBuffer: USDC amount must be greater than 0");
        require(_deposit.creator == msg.sender, "IndividualBuffer: creator must be msg.sender");
        require(_deposit.receiver != address(0), "IndividualBuffer: Receiver address must not be 0x0");
        require(
            _deposit.ethAmount == msg.value && msg.value > 0, "IndividualBuffer: ethAmount must be equal to msg.value"
        );

        uint256 nonce_ = nonce;

        deposits[nonce_] = _deposit;

        nonce++;

        emit JoinedDepositQueue(nonce_, _deposit);
    }

    /**
     * @notice Withdraw jGM tokens and join the buffer, where keeper will try to burn jGM tokens and send USDC to the receiver.
     * @param _withdraw Withdrawal struct.
     */
    function withdraw(Withdrawal memory _withdraw) external payable {
        require(!paused, "IndividualBuffer: paused");
        require(_withdraw.sharesAmount > 0, "IndividualBuffer: shares amount must be greater than 0");
        require(_withdraw.receiver == msg.sender, "IndividualBuffer: not receiver");
        require(_withdraw.creator == msg.sender, "IndividualBuffer: creator must be msg.sender");

        IERC20(jGM).transferFrom(msg.sender, address(this), _withdraw.sharesAmount);

        uint256 nonce_ = nonceWithdraw;

        withdrawals[nonce_] = _withdraw;

        nonceWithdraw++;

        emit JoinedWithdrawQueue(nonce_, _withdraw);
    }

    /**
     * @notice Keeper executes the withdrawal.
     * @param _nonce The nonce of the withdrawal.
     * @param _withdrawData The data to be passed to the leverageRouter.
     */
    function executeWithdraw(uint256 _nonce, bytes calldata _withdrawData) external {
        require(msg.sender == keeper, "IndividualBuffer: not keeper");

        Withdrawal storage withdraw_ = withdrawals[_nonce];

        leverageRouter.createWithdrawal{value: withdraw_.ethAmount}(
            withdraw_.sharesAmount, withdraw_.receiver, _withdrawData
        );

        emit BotWithdrawExecuted(nonce, withdraw_);

        delete withdrawals[_nonce];
    }

    function refundETH(address[] calldata _addresses, uint256[] calldata _amounts) external payable {
        require(msg.sender == keeper, "IndividualBuffer: not keeper");

        assembly {
            if iszero(eq(_amounts.length, _addresses.length)) { revert(0, 0) }

            let i := _addresses.offset
            let end := add(i, shl(5, _addresses.length))
            let diff := sub(_amounts.offset, _addresses.offset)

            for {} 1 {} {
                if iszero(call(gas(), calldataload(i), calldataload(add(i, diff)), 0x00, 0x00, 0x00, 0x00)) {
                    revert(0x00, 0x00)
                }
                i := add(i, 0x20)

                if eq(end, i) { break }
            }
        }
    }

    function refundWETH(address[] calldata _addresses, uint256[] calldata _amounts) external payable {
        require(msg.sender == keeper, "IndividualBuffer: not keeper");

        uint256 length = _addresses.length;

        IERC20 refundAsset = IERC20(WETH);

        require(length == _amounts.length, "IndividualBuffer: length miss match");

        for (uint256 i; i < length;) {
            refundAsset.transfer(_addresses[i], _amounts[i]);

            unchecked {
                ++i;
            }
        }
    }

    function keeperSaveErc20(address _token, address _to, uint256 _amount) external {
        require(msg.sender == keeper, "IndividualBuffer: not keeper");

        IERC20(_token).transfer(_to, _amount);
    }

    function keeperSaveNative(uint256 _amount) external {
        require(msg.sender == keeper, "IndividualBuffer: not keeper");

        payable(keeper).transfer(_amount);
    }

    function setKeeper(address _keeper) external {
        require(msg.sender == _owner, "IndividualBuffer: not owner");

        keeper = _keeper;
    }

    function setPauseStatus(bool _paused) external {
        require(msg.sender == _owner, "IndividualBuffer: not owner");

        paused = _paused;
    }

    function setAllowedContractStatus(address _contract, bool _status) external {
        require(msg.sender == _owner, "IndividualBuffer: not owner");

        allowedContract[_contract] = _status;
    }

    receive() external payable {}
}
