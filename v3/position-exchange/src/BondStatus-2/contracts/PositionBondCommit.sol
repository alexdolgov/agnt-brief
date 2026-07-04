pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./impl/Issuer.sol";
import "./impl/UnderlyingAsset.sol";
import "./impl/FaceAsset.sol";
import "./impl/SaleStrategyBase.sol";
import "./impl/BondStatus.sol";
import "./impl/BondUnit.sol";
import "./strategy/extensions/HoldTokenAndStake.sol";
import "./test/MockStake.sol";
import "./interfaces/IPositionBondCommit.sol";
import "./lib/BondCommitStruct.sol";

/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details
abstract contract PositionBondCommit is
    Issuer,
    BondStatus,
    UnderlyingAsset,
    HoldTokenAndStake,
    FaceAsset,
    SaleStrategyBase,
    BondUnit,
    IPositionBondCommit,
    ReentrancyGuard
{
    using BondCommitStruct for BondCommitStruct.BondCommitted;

    mapping(address => BondCommitStruct.BondCommitted)
        private amountCommittedMapping;

    uint256 public totalAmountCommitted;

    uint256 public totalUserCommitted;

    uint256 public percentFaceValue;

    constructor(
        string memory bondName_,
        string memory bondSymbol_,
        address underlyingAsset_,
        uint256 collateralAmount_,
        address faceAsset_,
        uint256 percentFaceValue_,
        uint256 totalSupply_
    )
        Issuer()
        BondUnit(totalSupply_, bondName_, bondSymbol_)
        FaceAsset(faceAsset_, 0)
        UnderlyingAsset(underlyingAsset_, collateralAmount_)
    {
        percentFaceValue = percentFaceValue_;
        emit BondCreated(
            bondName_,
            bondSymbol_,
            underlyingAsset_,
            collateralAmount_,
            faceAsset_,
            0,
            totalSupply_
        );
    }

    function faceAmount(address account) external view returns (uint256) {
        return FaceAsset._calculateFaceValueOut(balanceOf(account));
    }

    /**
     * @dev see {IPositionBond-active}
     */
    function active(
        uint64 _startSale,
        uint64 _active,
        uint64 _maturity
    ) public override(BondStatus) onlyIssuer nonReentrant {}

    /**
     * @dev see {IPositionBondCommit-active}
     */
    function active(
        uint64 _commit,
        uint64 _distribution,
        uint64 _active,
        uint64 _maturity
    ) public override(IPositionBondCommit, BondStatus) onlyIssuer nonReentrant {
        super.active(_commit, _distribution, _active, _maturity);
        emit BondCommitActivated(_commit, _distribution, _active, _maturity);
    }

    /**
     * @dev see {IPositionBond-claimUnderlyingAsset}
     */
    function claimUnderlyingAsset()
        public
        override(IPositionBondCommit, UnderlyingAsset)
        onlyIssuer
        onlyMatured
        onlyReadyToClaim
        nonReentrant
    {
        UnderlyingAsset.claimUnderlyingAsset();
        BondStatus._setUnderlyingAssetStatusRefunded();
    }

    function claimLiquidatedUnderlyingAsset()
        public
        onlyMatured
        onlyLiquidated
    {
        uint256 _bondBalance = balanceOf(msg.sender);
        require(_bondBalance != 0, "invalid bond balance");
        _burn(msg.sender, _bondBalance);
        UnderlyingAsset._transferUnderlyingAssetLiquidated(
            _bondBalance,
            bondSupply
        );
    }

    /// @dev see {IPositionBond-claimSoldAmount}
    function claimSoldAmount(uint256 amount)
        external
        virtual
        onlyIssuer
        onlyActive
        nonReentrant
    {
        FaceAsset._transferOut(msg.sender, amount);
        emit SoldAmountClaimed(msg.sender, amount);
    }

    /**
     * @dev see {IPositionBond-claimFaceValue}
     */
    function claimFaceValue()
        external
        onlyMatured
        onlyReadyToClaimFaceValue
        nonReentrant
    {
        uint256 _bondBalance = balanceOf(msg.sender);
        require(_bondBalance != 0, "invalid bond balance");
        _burn(msg.sender, _bondBalance);
        FaceAsset._transferFaceValueOut(_bondBalance);
    }

    /**
     * @dev see {IPositionBond-claimRemainderUnderlyingAsset}
     */
    function claimRemainderUnderlyingAsset()
        external
        onlyActive
        onlyIssuer
    {
        UnderlyingAsset._transferRemainderUnderlyingAsset(
            bondSupply,
            totalSupply()
        );
    }

    function commit(uint256 amount)
        external
        onlyCommit
        purchasable
        nonReentrant
    {
        address _trader = msg.sender;
        uint256 maxAmountCanCommit = convertAmountStakeCanCommit(_trader);
        require(amount > 0, "invalid amount commit");
        _beforeCommitHook(msg.sender, maxAmountCanCommit);

        uint256 amountCommitValidate = BondMath.availableAmountToCommit(
            amount,
            amountCommittedMapping[_trader].amountCommitted,
            maxAmountCanCommit
        );
        if (amountCommittedMapping[_trader].amountCommitted == 0){
            totalUserCommitted += 1;
        }
        FaceAsset._transferIn(amountCommitValidate);
        amountCommittedMapping[_trader].increaseAmountCommit(
            amountCommitValidate
        );
        totalAmountCommitted += amountCommitValidate;
        emit Committed(_trader, amountCommitValidate);
    }

    function claimBond() external onlyCanDistribution nonReentrant {
        address _trader = msg.sender;
        require(
            !amountCommittedMapping[_trader].alreadyDistributed() &&
                amountCommittedMapping[_trader].isNoAmountCommitted(),
            "!distribute"
        );
        uint256 bondAmount = distributionAmount(_trader);
        amountCommittedMapping[_trader].updateDistributed();
        BondUnit._mint(_trader, bondAmount);
        emit Distributed(_trader, bondAmount);
    }

    function amountCommitted(address _trader)
        external
        view
        returns (BondCommitStruct.BondCommitted memory)
    {
        return amountCommittedMapping[_trader];
    }

    function distributionAmount(address _trader) public view returns (uint256) {
        return
            BondMath.calculateBondDistributionAmount(
                amountCommittedMapping[_trader].amountCommitted,
                totalAmountCommitted,
                bondSupply
            );
    }

    function issuePrice() public view virtual override returns (uint256) {
        return (totalAmountCommitted * 10**18) / bondSupply;
    }

    function faceValue()
        public
        view
        virtual
        override(FaceAsset)
        returns (uint256)
    {
        return issuePrice() + (issuePrice() * percentFaceValue) / 100;
    }

    /**
     * @dev see {IPositionBond-repay}
     */
    function repay()
        external
        virtual
        onlyIssuer
        onlyMatured
        onlyNotReachTimeLiquidationTime
    {
        FaceAsset._transferRepaymentFaceValue(totalSupply());
        BondStatus._setUnderlyingAssetStatusReadyToClaim();
    }

    /// @dev see {IPositionBond-liquidate}
    function liquidate() external onlyReachLiquidationTime {
        BondStatus._setUnderlyingAssetStatusLiquidated();
        emit Liquidated(msg.sender);
    }

    function isPurchasable(address caller) public view virtual returns (bool) {}

    function getBondAmount(uint256 amount)
        public
        view
        virtual
        override
        returns (uint256, uint256)
    {}

    /**
     *
     *      INTERNAL FUNCTIONS
     *
     */

    function _transferUnderlyingAsset()
        internal
        override(UnderlyingAsset, BondStatus)
    {
        UnderlyingAsset._transferUnderlyingAsset();
    }

    function _issuer() internal view override returns (address) {
        return issuer();
    }

    function _bondTransferable()
        internal
        override(BondUnit, BondStatus)
        returns (bool)
    {
        return BondStatus._bondTransferable();
    }

    /// @dev Hook function
    function _afterPurchase(address _buyer, uint256 _bondAmount)
        internal
        virtual
    {}

    function _beforeCommitHook(address _buyer, uint256 _commitAmount) internal virtual {}

    function _canCommit(address _trader) internal view virtual returns (bool) {
        return
            amountCommittedMapping[_trader].amountCommitted <
            convertAmountStakeCanCommit(_trader);
    }
}
