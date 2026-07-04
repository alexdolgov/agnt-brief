// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/math/Math.sol';
import '@openzeppelin/contracts/math/SafeMath.sol';
import '@openzeppelin/contracts/utils/Pausable.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import '@openzeppelin/contracts/utils/Address.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';

contract StrategyDummy is Ownable, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    uint256 public wantLockedTotal = 0;
    uint256 public sharesTotal = 0;

    address public vaultChef;
    address public wantAddress;

    address public adminAddress;

    event Pause(address indexed user);
    event UnPause(address indexed user);

    constructor(
        address _vaultChef,
        address _adminAddress,
        address _wantAddress
    ) public {
        vaultChef = _vaultChef;
        adminAddress = _adminAddress;
        wantAddress = _wantAddress;
    }

    function deposit(address _userAddress, uint256 _wantAmt) public onlyOwner whenNotPaused returns (uint256){
        IERC20(wantAddress).safeTransferFrom(address(msg.sender), address(this), _wantAmt);

        uint256 sharesAdded = _wantAmt;
        if (wantLockedTotal > 0) {
            sharesAdded = _wantAmt
            .mul(sharesTotal)
            .div(wantLockedTotal);
        }
        sharesTotal = sharesTotal.add(sharesAdded);

        return sharesAdded;
    }

    function depositBUSD(address _userAddress, uint256 busdAmount) public onlyOwner whenNotPaused returns (uint256){
        revert("UNSUPPORTED");
    }

    function withdraw(address _userAddress, uint256 _wantAmt) public onlyOwner nonReentrant returns (uint256){
        require(_wantAmt > 0, "_wantAmt <= 0");

        if (wantLockedTotal < _wantAmt) {
            _wantAmt = wantLockedTotal;
        }

        uint256 sharesRemoved = _wantAmt.mul(sharesTotal).div(wantLockedTotal);
        if (sharesRemoved > sharesTotal) {
            sharesRemoved = sharesTotal;
        }
        sharesTotal = sharesTotal.sub(sharesRemoved);
        wantLockedTotal = wantLockedTotal.sub(_wantAmt);

        IERC20(wantAddress).safeTransfer(vaultChef, _wantAmt);


        return sharesRemoved;
    }

    function withdrawBUSD(address _userAddress, uint256 shares) public onlyOwner nonReentrant returns (uint256, uint256){
        revert("UNSUPPORTED");
    }

    function earn() public whenNotPaused {

    }

    modifier onlyAdmin() {
        require(msg.sender == adminAddress, "UNAUTHORIZED");
        _;
    }

    function pause() external onlyAdmin {
        _pause();
        emit Pause(msg.sender);
    }

    function unpause() external onlyAdmin{
        _unpause();
        emit UnPause(msg.sender);
    }

    function tvl() external view returns (uint256) {
        return wantTokenValue(wantLockedTotal);
    }

    function wantTokenValue(uint256 wantAmount) public view returns (uint256) {
        return wantAmount.mul(1e18);
    }

    function originTVL() public view returns (uint256) {
        return 1e18;
    }

    function rewardTokenValue(uint256 rewardAmount) public view returns (uint256) {
        return rewardAmount.mul(1e18);
    }

    function originRewardsPerBlock() public view returns (uint256){
        return 1e18;
    }

    function originAPR(uint256 blocks) public view returns (uint256){
        return blocks.mul(1e18);
    }

    function originStakedTotal() public view returns (uint256){
        return 1e18;
    }
}
