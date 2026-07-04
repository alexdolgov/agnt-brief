// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// Import the V1 contract
import './OVAULTStaking.sol';
import 'hardhat/console.sol';

// V2 contract that extends OVAULTStaking
contract OVAULTStakingV2 is OVAULTStaking {
  uint256 depositedPrincipal;
  uint256 depositedInterest;

  function receiveRepayment(
    uint256 principalAmount,
    uint256 interestAmount
  ) public override onlyAdmin {
    require(principalAmount <= totalUSDC() - currentUSDC(), 'principalAmount exceeds Debt Balance');

    safeTransferFrom(
      address(usdcToken),
      msg.sender,
      address(this),
      principalAmount + interestAmount
    );
    depositedInterest += interestAmount;
    depositedPrincipal += principalAmount;
  }

  function SendFundsToDitto(uint256 amount) public override onlyAdmin {
    require(amount <= currentUSDC(), 'Amount exceeds current USDC balance');
    safeTransfer(address(usdcToken), DittoAddress, amount);
  }

  function currentUSDC() public view override returns (uint256) {
    uint256 balance = usdcToken.balanceOf(address(this));
    return balance - depositedPrincipal - depositedInterest;
  }

  function withdrawFunds(uint256) public virtual override returns (uint256, uint256) {
    revert('depriated');
  }

  function DittoDept() public view returns (uint256) {
    return totalUSDC() - currentUSDC();
  }

  function withdrawFunds(
    uint256 principalAmount,
    uint256 interestAmount,
    uint256 QueuedLP
  )
    public
    nonReentrant
    onlyWithdrawContract
    returns (uint256 usdcAmount, uint256 rate, uint256 LPAmount)
  {
    require(principalAmount <= depositedPrincipal, 'principalAmount exceeds depositedPrincipal');
    require(interestAmount <= depositedInterest, 'interestAmount exceeds depositedInterest');

    require(principalAmount <= DittoDept(), 'principalAmount exceeds Debt Balance');
    totalInterest += interestAmount;
    exchangeRate = currentRate();
    repaymentCount++;
    repayments[repaymentCount] = Repayment(
      principalAmount,
      interestAmount,
      block.timestamp,
      exchangeRate
    );
    depositedInterest -= interestAmount;
    depositedPrincipal -= principalAmount;
    uint256 stakingLP = usdcToLP(currentUSDC());
    LPAmount = QueuedLP > stakingLP ? stakingLP : QueuedLP;
    if (LPAmount == 0) {
      return (0, exchangeRate, 0);
    }
    require(LPAmount <= LPSupply, 'Amount exceeds LP supply');

    usdcAmount = LPToUsdc(LPAmount);
    require(usdcAmount <= currentUSDC(), 'Amount exceeds current USDC balance');
    totalWithdrawn += usdcAmount;
    LPSupply -= LPAmount;
    rate = exchangeRate;
    safeTransferFrom(address(LPToken), msg.sender, escrowAddress, LPAmount);
    safeTransfer(address(usdcToken), msg.sender, usdcAmount);
  }

  /**
   * @dev Start a new round (Deprecated in V2)
   */
  function startNewRound(uint256, uint256, uint256) public view override onlyOperationWallet {
    revert('startNewRound is not supported in V2');
  }

  function ToLP(uint256 usdcAmount) public view returns (uint256 LPAmount) {
    LPAmount = (usdcAmount * 10 ** 18) / exchangeRate;
  }

  /**
   * @dev Edit round
   * @param _minStake The minimum stake
   * @param _StakeIncrement The stake increment
   */
  function editRound(
    uint256,
    uint256 _minStake,
    uint256 _StakeIncrement
  ) public override onlyOperationWallet {
    require(_minStake > 0, 'Min Stake must be greater than zero');
    require(_StakeIncrement > 0, 'Stake increment must be greater than zero');
    require(_minStake % _StakeIncrement == 0, 'Min Stake must be a multiple of StakeIncrement');

    minStake = _minStake;
    StakeIncrement = _StakeIncrement;
  }

  /**
   * @dev Stake USDC tokens to receive LP tokens
   * @param signature The signature of the stake data
   * @param Data The stake data
   */
  function StakeUSDC(bytes memory signature, StakeData calldata Data) public override nonReentrant {
    require(activeStakes, 'Stakes are not active');
    require(Data.amount >= minStake, 'Amount must be greater than minStake');
    require(Data.amount % StakeIncrement == 0, 'Amount must be a multiple of StakeIncrement');

    verifySignature(signature, Data);

    uint256 lpAmount = usdcToLP(Data.amount);
    Escrow(payable(escrowAddress)).mintTo(msg.sender, lpAmount);

    StakeReceived += Data.amount;
    LPSupply += lpAmount;
    currentRoundStakes += Data.amount;
    safeTransferFrom(address(usdcToken), msg.sender, address(this), Data.amount);
    emit Staked(msg.sender, Data.amount, lpAmount);
  }
}
