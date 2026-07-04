// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;
import "./leverageFactoryData.sol";
import "../leveragePool/leveragePool.sol";
import "./BaseSplitCodeFactory.sol";
interface IAuthorization{
    function addAuthorization(address account) external;
    function setInterestFee(uint256 _interestFee) external;
    function setInterestRate(int256 _interestRate,uint256 rateInterval)external;

}
contract baseleverageFactory is leverageFactoryData,BaseSplitCodeFactory {
    /**
     * @dev constructor.
     */
    constructor (address multiSignature,address origin0,address origin1,address payable _feeAddress,address _oracle, bytes memory creationCode) 
        proxyOwner(multiSignature,origin0,origin1) BaseSplitCodeFactory(creationCode) {
        require(_feeAddress != address(0), "defrostFactory : input zero address");
        require(_oracle != address(0), "defrostFactory : input zero address");
        oracle = _oracle;
        feePool = _feeAddress;
    }
    // create a new leverage pool.
    // lending from lending pool.
    // swap on swapHelper. exchange from lending token to underlying token.
    function createLeveragePool(bytes32 poolID,address _lendingPool,address _underlying,
        address oracle,uint256 collateralRate,uint256 liquidationReward,uint256 liquidationPenalty)external onlyOrigin returns(address){
        address vaultAddress = poolsMap[poolID];
        require(vaultAddress == address(0),"this vault is already created!");
        return _createLeveragePool(poolID,_lendingPool,_underlying,oracle,
            collateralRate,liquidationReward,liquidationPenalty);
    }
    // get leverage pool by pool name.
    function getLeveragePool(bytes32 poolID)public view returns (address){
        return poolsMap[poolID];
    }
    // get all leverage pools.
    function getAllLeveragePool()external view returns (address[] memory){
        return allPools;
    }
    // create a new leverage pool.
    // lending from lending pool.
    // swap on swapHelper. exchange from lending token to underlying token.
    function _createLeveragePool(bytes32 poolID,address _lendingPool,address _underlying,
        address swapHelper,uint256 collateralRate,uint256 liquidationReward,uint256 liquidationPenalty)internal virtual returns(address){
        (address _origin0,address _origin1) = txOrigin();
        address newPool = super._create(abi.encode(getMultiSignatureAddress(),_origin0,_origin1,
            feePool,_lendingPool,_underlying,oracle,swapHelper,
            collateralRate,liquidationReward,liquidationPenalty));
        IAuthorization(_lendingPool).addAuthorization(newPool);
        poolsMap[poolID] = newPool;
        allPools.push(newPool);
        emit CreateLeveragePool(newPool,poolID,_lendingPool,_underlying,collateralRate,
            liquidationReward,liquidationPenalty);
        return newPool;
    }
    function setInterestFee(address _lendingPool,uint256 _interestFee) external onlyOrigin{
        IAuthorization(_lendingPool).setInterestFee(_interestFee);
    }
    function setInterestRate(address _lendingPool,int256 _interestRate,uint256 rateInterval)external onlyOrigin{
        IAuthorization(_lendingPool).setInterestRate(_interestRate,rateInterval);
    }
}