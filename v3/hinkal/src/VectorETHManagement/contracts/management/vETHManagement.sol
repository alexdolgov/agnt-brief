// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interface/IvETH.sol";

contract VectorETHManagement is Ownable2Step {

    /// STATE VARIABLES ///

    /// @notice Max redeemable time can be set is 5 years
    uint256 public constant MAX_REDEEM_TIME = 1825 days;

    /// @notice Vector ETH
    IvETH public constant vETH = IvETH(0x38D64ce1Bdf1A9f24E0Ec469C9cAde61236fB4a0);

    /// @notice Bool is address is approved protector
    mapping(address => bool) public approvedProtector;
    /// @notice Redeem details for address
    mapping(address => RedeemDetails) public redeemDetails;

    /// EVENTS ///

    event Redemtion(address indexed _redeemer, address indexed _tokenRedeemed, uint256 _amount);
    event ProtectorAdded(address indexed _protectorAdded);
    event ProtectorRemoved(address indexed _protectorRemoved);
    event RedemableAmountSet(address indexed _redeemer, uint256 _timestampCanRedeem, uint256 _amountRedeemable);

    /// STRUCTS ///

    struct RedeemDetails {
        uint256 amountCanRedeem;
        uint256 timestampCanRedeem;
    }

    /// OWNABLE ///

    /// @notice Override to revert so contract always has an owner
    function renounceOwnership() public override onlyOwner() {
        revert();
    }

    /// MUTATIVE FUNCTIONS ///

    /// @notice Redeem `_vETHToRedeem` for `_tokenToReceive` sent to `_to`
    function redeem(address _tokenToReceive, address _to, uint256 _vETHToRedeem) external {
        if (msg.sender != owner()) {
            RedeemDetails memory redeemDetail = redeemDetails[msg.sender];
            require(block.timestamp >= redeemDetail.timestampCanRedeem, "Cannot redeem yet");
            require(redeemDetail.amountCanRedeem >= _vETHToRedeem, "Not enough to redeem");
            redeemDetails[msg.sender].amountCanRedeem -= _vETHToRedeem;
        }
        IERC20(vETH).transferFrom(msg.sender, address(this), _vETHToRedeem);
        _redeem(_tokenToReceive, _to, _vETHToRedeem);
    }

    /// INTERNAL FUNCTIONS ///

    /// @notice Internal redeem function opens and closes redemtions
    function _redeem(address _restakedLSTToReceive, address _to, uint256 _vETHToRedeem) internal {
        emit Redemtion(msg.sender, _restakedLSTToReceive, _vETHToRedeem);
        vETH.setRedemtionActive();
        vETH.redeem(_restakedLSTToReceive, _to, _vETHToRedeem);
        vETH.setRedemtionUnactive();
    }

    /// OWNER FUNCTION ///

    /// @notice Add protector
    function addProtector(address _protector) external onlyOwner {
        require(!approvedProtector[_protector], "Already Protector");
        approvedProtector[_protector] = true;
        emit ProtectorAdded(_protector);
    }

    /// @notice Remove protector
    function removeProtector(address _protector) external onlyOwner {
        require(approvedProtector[_protector], "Not Protector");
        approvedProtector[_protector] = false;
        emit ProtectorRemoved(_protector);
    }

    /// @notice Set redeem details for `_redeemer`
    function setRedeemableAmount(address _redeemer, uint256 _amountvETH, uint256 _timeTillRedeemable)
        external
        onlyOwner
    {
        require(_timeTillRedeemable <= MAX_REDEEM_TIME, "Time till redeemable longer than max time");
        if (redeemDetails[_redeemer].amountCanRedeem == 0) {
            redeemDetails[_redeemer].timestampCanRedeem = block.timestamp + _timeTillRedeemable;
        } 
        
        redeemDetails[_redeemer].amountCanRedeem += _amountvETH;

        emit RedemableAmountSet(_redeemer, redeemDetails[_redeemer].timestampCanRedeem, _amountvETH);
    }

    /// vETH FUNCTIONS ///

    /// @notice              Add restaked LST
    /// @param _restakedLST  Address of restaked LST to add
    /// @param _vETHPerLST   Amount of vETH per `_restakedLST`
    function addRestakedLST(address _restakedLST, uint256 _vETHPerLST) external onlyOwner {
        vETH.addRestakedLST(_restakedLST, _vETHPerLST);
    }

    /// @notice              Update address to route `_restakedLST` to
    /// @param _restakedLST  Address of restaked LST to add where to route
    /// @param _where        Address of where to route `_restakedLST`
    function updateRouteRestakedLSTTo(address _restakedLST, address _where) external onlyOwner {
        vETH.updateRouteRestakedLSTTo(_restakedLST, _where);
    }

    /// @notice              Update amount of vETH per `_restakedLST`
    /// @param _restakedLST  Address of restaked LST to update `_vETHPerLST` for
    /// @param _vETHPerLST   Amount of vETH per `_restakedLST`
    function updatevETHPerLST(address _restakedLST, uint256 _vETHPerLST) external onlyOwner {
        vETH.updatevETHPerLST(_restakedLST, _vETHPerLST);
    }

    /// @notice  Add approved manager
    function addApprovedManager(address _manager) external onlyOwner {
        vETH.addApprovedManager(_manager);
    }

    /// @notice  Remove approved manager
    function removeApprovedManager(address _manager) external onlyOwner {
        vETH.removeApprovedManager(_manager);
    }

    /// @notice  Transfer ownership back to owner
    function transferOwnershipBack() external onlyOwner {
        vETH.transferOwnership(owner());
    }

    /// @notice Withdraw stuck token from contract
    function withdrawStuckToken(address _token, address _to, uint256 _amount) external onlyOwner {
        vETH.recoverTokens(_to, _token, _amount);
    }

    /// PROTECTOR FUNCTION ///

    /// @notice  Remove approved token
    function removeApprovedToken(address _token) external {
        require(approvedProtector[msg.sender] || msg.sender == owner(), "Not approved protector");
        vETH.removeRestakedLST(_token);
    }
}
