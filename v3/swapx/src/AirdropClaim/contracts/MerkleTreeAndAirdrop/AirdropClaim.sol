// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "../interfaces/IVotingEscrow.sol";
import "../interfaces/IVesting.sol";
import "../interfaces/IAirdropClaim.sol";

contract AirdropClaim is ReentrancyGuard, Ownable, IAirdropClaim {

    using SafeERC20 for IERC20;

    uint256 public veShare;
    uint256 public constant PERCENT_PRECISION = 10_000;

    uint256 public constant LOCK_PERIOD = 2 * 365 * 86400;

    address public ve;
    address public merkle;
    address public vesting;
    IERC20 public token;

    modifier onlyMerkle {
        require(msg.sender == merkle, 'not merkle');
        _;
    }

    constructor(address _token, address _ve, address _vesting, uint256 _veShare) {
        require(_veShare <= PERCENT_PRECISION, "bade percent");

        token = IERC20(_token);
        ve = _ve;
        vesting = _vesting;

        veShare = _veShare;
    }

    /// @notice claim the given amount and send to _to. Checks are done by merkle tree contract. (eg.: 60% veSWPx 40% $SWPx linear vesting)
    function claim(address _who, uint _amount, address _to) external nonReentrant onlyMerkle {
        require(token.balanceOf(address(this)) >= _amount, 'not enough token');

        uint256 _veShareAmount = (veShare * _amount) / PERCENT_PRECISION;
        if (_veShareAmount > 0) {
            address _ve = ve;
            token.approve(_ve, 0);
            token.approve(_ve, _veShareAmount);
            uint256 _tokenId = IVotingEscrow(_ve).create_lock_for(_veShareAmount, LOCK_PERIOD, _to);
            require(_tokenId != 0);
            require(IVotingEscrow(ve).ownerOf(_tokenId) == _to, 'wrong ve mint');
        }

        uint256 vestingShareAmount = _amount - _veShareAmount;
        if (vestingShareAmount > 0) {
            address _vesting = vesting;
            token.approve(_vesting, 0);
            token.approve(_vesting, vestingShareAmount);
            IVesting(_vesting).vestTokensFor(_to, vestingShareAmount);
        }

        //(address indexed who, address indexed to, uint256 amount, uint256 veShareAmount, uint256 vestingShareAmount)
        emit Claimed({
            who: _who,
            to: _to,
            amount: _amount,
            veShareAmount: _veShareAmount,
            vestingShareAmount: vestingShareAmount
        });
    }


    /*
        OWNER FUNCTIONS
    */

    function withdrawTokens(uint256 amount) external onlyOwner {
        token.safeTransfer(msg.sender, amount);
    }

    function setVeShare(uint256 newValue) external onlyOwner {
        require(newValue <= PERCENT_PRECISION, "bad percent");

        veShare = newValue;
    }

    function setMerkleTreeContract(address _merkle) external onlyOwner {
        require(_merkle != address(0));
        merkle = _merkle;
    }
}