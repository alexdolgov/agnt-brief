// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.23;

import "../interfaces/IAppErrors.sol";
import "../interfaces/IApplicationEvents.sol";
import "../interfaces/IDungeonFactory.sol";
import "../interfaces/IERC721.sol";
import "../interfaces/IGuildController.sol";
import "../interfaces/IItem.sol";
import "../interfaces/IItemController.sol";
import "../interfaces/IItemControllerHelper.sol";
import "../interfaces/IReinforcementController.sol";
import "../interfaces/ITreasury.sol";
import "./AppLib.sol";
import "./CalcLib.sol";
import "./ShelterLib.sol";
import "./ItemLib.sol";
import "./PackingLib.sol";
import "./ScoreLib.sol";
import "./OtherItemLib.sol";

library ItemStatsLib {
  using EnumerableSet for EnumerableSet.AddressSet;
  using CalcLib for int32;
  using PackingLib for address;
  using PackingLib for bytes32;
  using PackingLib for bytes32[];
  using PackingLib for uint32[];
  using PackingLib for int32[];

  //region ------------------------ CONSTANTS

  uint private constant AUGMENT_CHANCE = 0.7e18;
  /// @dev should be 20%
  uint private constant AUGMENT_FACTOR = 5;
  uint private constant DURABILITY_REDUCTION = 3;
  uint private constant MAX_AUGMENTATION_LEVEL = 20;

  /// @dev keccak256(abi.encode(uint256(keccak256("item.controller.main")) - 1)) & ~bytes32(uint256(0xff))
  bytes32 internal constant MAIN_STORAGE_LOCATION = 0xe78a2879cd91c3f7b62ea14e72546fed47c40919bca4daada532a5fa05ac6700;

  /// @notice SIP-003: Max value of item fragility that corresponds to 100%
  uint private constant MAX_FRAGILITY = 100_000;
  /// @notice SIP-003: Each successful repair has a chance of increasing the item's fragility by 1%.
  uint private constant FRAGILITY_SUCCESSFUL_REPAIR_PORTION = 1_000;
  /// @notice SIP-003: 10% chance of increasing the item's fragility on successful repair
  uint private constant FRAGILITY_SUCCESSFUL_REPAIR_CHANCE = 15;
  /// @notice SIP-003: The quest mechanic will break the item and increase its fragility by 1%.
  uint private constant FRAGILITY_BREAK_ITEM_PORTION = 1_000;

  //endregion ------------------------ CONSTANTS

  //region ------------------------ Data types
  struct EquipLocalContext {
    bool inSandbox;
    IHeroController.SandboxMode sandboxMode;
    ItemLib.ItemWithId itemData;
    IStatController.ItemSlots slot;
    address payToken;
    address heroToken;
    /// @notice Lazy initialization of {equippedSlots}
    bool equippedSlotsLoaded;
    uint8[] equippedSlots;
    uint heroTokenId;
    uint i;
  }

  struct ReduceDurabilityContext {
    /// @notice values 0 or 1 for SKILL_1, SKILL_2, SKILL_3
    uint8[] skillSlots;
    uint8[] busySlots;
    address itemAdr;
    InputTakeOff inputTakeOff;
    uint16 durability;
    uint itemId;
  }

  struct TakeOffContext {
    InputTakeOff inputTakeOff;
    address msgSender;
    address hero;

    uint heroId;
  }

  struct InputTakeOff {
    /// @notice True if the item is broken. The durability of the broken item will be set to 0.
    bool broken;
    IHeroController.SandboxMode sandboxMode;
    address destination;
  }

  //endregion ------------------------ Data types

  //region ------------------------ STORAGE
  function _S() internal pure returns (IItemController.MainState storage s) {
    assembly {
      s.slot := MAIN_STORAGE_LOCATION
    }
    return s;
  }
  //endregion ------------------------ STORAGE

  //region ------------------------ Views
  function itemByIndex(uint idx) internal view returns (address) {
    return _S().items.at(idx);
  }

  function itemsLength() internal view returns (uint) {
    return _S().items.length();
  }

  function itemMeta(address item) internal view returns (IItemController.ItemMeta memory meta) {
    return ItemLib.unpackedItemMeta(_S().itemMeta[item]);
  }

  function augmentInfo(address item) internal view returns (address token, uint amount) {
    return PackingLib.unpackAddressWithAmount(_S().augmentInfo[item]);
  }

  function genAttributeInfo(address item) internal view returns (IItemController.ItemGenerateInfo memory info) {
    return ItemLib.unpackItemGenerateInfo(_S().generateInfoAttributes[item]);
  }

  function genCasterAttributeInfo(address item) internal view returns (IItemController.ItemGenerateInfo memory info) {
    return ItemLib.unpackItemGenerateInfo(_S().generateInfoCasterAttributes[item]);
  }

  function genTargetAttributeInfo(address item) internal view returns (IItemController.ItemGenerateInfo memory info) {
    return ItemLib.unpackItemGenerateInfo(_S().generateInfoTargetAttributes[item]);
  }

  function genAttackInfo(address item) internal view returns (IItemController.AttackInfo memory info) {
    return ItemLib.unpackItemAttackInfo(_S().generateInfoAttack[item]);
  }

  function itemInfo(address item, uint itemId) internal view returns (IItemController.ItemInfo memory info) {
    return ItemLib.unpackedItemInfo(_S().itemInfo[PackingLib.packNftId(item, itemId)]);
  }

  function equippedOn(address item, uint itemId) internal view returns (address hero, uint heroId) {
    return PackingLib.unpackNftId(_S().equippedOn[item.packNftId(itemId)]);
  }

  function itemAttributes(address item, uint itemId) internal view returns (int32[] memory values, uint8[] memory ids) {
    return PackingLib.toInt32ArrayWithIds(_S()._itemAttributes[PackingLib.packNftId(item, itemId)]);
  }

  function consumableAttributes(address item) internal view returns (int32[] memory values, uint8[] memory ids) {
    return PackingLib.toInt32ArrayWithIds(_S()._itemConsumableAttributes[item]);
  }

  function consumableStats(address item) internal view returns (IStatController.ChangeableStats memory stats) {
    return StatLib.unpackChangeableStats(_S().itemConsumableStats[item]);
  }

  function casterAttributes(address item, uint itemId) internal view returns (int32[] memory values, uint8[] memory ids) {
    return PackingLib.toInt32ArrayWithIds(_S()._itemCasterAttributes[PackingLib.packNftId(item, itemId)]);
  }

  function targetAttributes(address item, uint itemId) internal view returns (int32[] memory values, uint8[] memory ids) {
    return PackingLib.toInt32ArrayWithIds(_S()._itemTargetAttributes[PackingLib.packNftId(item, itemId)]);
  }

  function itemAttackInfo(address item, uint itemId) internal view returns (IItemController.AttackInfo memory info) {
    return ItemLib.unpackItemAttackInfo(_S()._itemAttackInfo[PackingLib.packNftId(item, itemId)]);
  }

  function score(address item, uint itemId) external view returns (uint) {
    return ScoreLib.itemScore(
      StatLib.bytesToFullAttributesArray(_S()._itemAttributes[PackingLib.packNftId(item, itemId)]),
      ItemLib.unpackedItemMeta(_S().itemMeta[item]).baseDurability
    );
  }

  function isAllowedToTransfer(address item, uint itemId) internal view returns (bool) {
    return _S().equippedOn[item.packNftId(itemId)] == bytes32(0);
  }

  function consumableActionMask(address item) internal view returns (uint) {
    return _S()._consumableActionMask[item];
  }

  /// @notice SIP-003: item fragility counter that displays the chance of an unsuccessful repair.
  /// @dev [0...100%], decimals 3, so the value is in the range [0...10_000]
  function itemFragility(address item, uint itemId) internal view returns (uint) {
    return _S().itemFragility[item.packNftId(itemId)];
  }

  /// @notice SCB-1014: packed metadata for the item of type "Other"
  /// Use {PackingLib.unpackOtherXXX} routines to unpack data.
  /// The proper routine depends on subtype kind, use {PackingLib.getOtherItemTypeKind} to extract it.
  function packedItemMetaData(address item) internal view returns (bytes memory) {
    return _S().packedItemMetaData[item];
  }

  function itemControllerHelper() internal view returns (address) {
    return address(uint160(_S().globalParam[IItemController.GlobalParam.ITEM_CONTROLLER_HELPER_ADDRESS_1]));
  }

  function isItemEquipped(address item, uint itemId) internal view returns (bool) {
    return _S().equippedOn[item.packNftId(itemId)] != bytes32(0);
  }
  //endregion ------------------------ Views

  //region ------------------------ Deployer actions
  function setItemControllerHelper(IController controller, address helper_) internal {
    ItemLib.onlyDeployer(controller, msg.sender);
    if (itemControllerHelper() != address(0)) revert IAppErrors.AlreadyInitialized();

    _S().globalParam[IItemController.GlobalParam.ITEM_CONTROLLER_HELPER_ADDRESS_1] = uint(uint160(helper_));
    emit IApplicationEvents.ItemControllerHelper(helper_);
  }

  //endregion ------------------------ Deployer actions

  //region ------------------------ Controllers actions
  function mintNewItem(
    IController controller,
    address sender,
    address item,
    address recipient
  ) internal returns (uint itemId) {
    return ItemLib.mintNewItem(_S(), controller, sender, item, recipient);
  }

  /// @notice Reduce durability of all equipped items except not-used items of SKILL-type.
  /// Used skills are stored in skillSlotsForDurabilityReduction
  function reduceEquippedItemsDurability(
    ControllerContextLib.ControllerContext memory cc,
    address hero,
    uint heroId,
    uint8 biome,
    bool reduceDurabilityAllSkills
  ) external {
    ReduceDurabilityContext memory ctx;

    ItemLib.onlyRegisteredControllers(cc);

    if (!reduceDurabilityAllSkills) {
      // reduce durability of skill-slots only if they are marked for slot-durability-reduction
      ctx.skillSlots = ControllerContextLib.dungeonFactory(cc).skillSlotsForDurabilityReduction(hero, heroId);
    }
    ctx.busySlots = ControllerContextLib.statController(cc).heroItemSlots(hero, heroId);
    ctx.inputTakeOff = InputTakeOff(false, _getSandboxMode(cc, hero, heroId), IERC721(hero).ownerOf(heroId));

    for (uint i; i < ctx.busySlots.length; ++i) {
      if (!reduceDurabilityAllSkills) {
        if (
          (ctx.busySlots[i] == uint8(IStatController.ItemSlots.SKILL_1) && ctx.skillSlots[0] == 0)
          || (ctx.busySlots[i] == uint8(IStatController.ItemSlots.SKILL_2) && ctx.skillSlots[1] == 0)
          || (ctx.busySlots[i] == uint8(IStatController.ItemSlots.SKILL_3) && ctx.skillSlots[2] == 0)
        ) {
          continue;
        }
      }

      (ctx.itemAdr, ctx.itemId) = ControllerContextLib.statController(cc).heroItemSlot(hero, uint64(heroId), ctx.busySlots[i]).unpackNftId();
      ctx.durability = _reduceDurabilityForItem(_S(), ctx.itemAdr, ctx.itemId, biome);

      // if broken need to take off
      if (ctx.durability == 0) {
        _takeOff(_S(), cc, ctx.itemAdr, ctx.itemId, hero, heroId, ctx.busySlots[i], ctx.inputTakeOff);
      }
    }
  }

  /// @dev Some stories can manipulate items
  function takeOffDirectly(
    ControllerContextLib.ControllerContext memory cc,
    address item,
    uint itemId,
    address hero,
    uint heroId,
    uint8 itemSlot,
    address destination,
    bool broken
  ) external {
    if (address(ControllerContextLib.storyController(cc)) != msg.sender && address(ControllerContextLib.heroController(cc)) != msg.sender) {
      revert IAppErrors.ErrorForbidden(msg.sender);
    }
    IHeroController.SandboxMode sandboxMode = _getSandboxMode(cc, hero, heroId);
    ItemStatsLib._takeOff(_S(), cc, item, itemId, hero, heroId, itemSlot, InputTakeOff(broken, sandboxMode, destination));
  }

  /// @notice SIP-003: The quest mechanic that previously burned the item will increase its fragility by 1%
  function incBrokenItemFragility(IController controller, address item, uint itemId) internal {
    ItemLib.onlyStoryController(controller, msg.sender);
    _addItemFragility(item, itemId, FRAGILITY_BREAK_ITEM_PORTION);
  }
  //endregion ------------------------ Controllers actions

  //region ------------------------ Eoa actions
  function equipMany(
    ItemLib.SenderInfo memory senderInfo,
    ControllerContextLib.ControllerContext memory cc,
    address hero,
    uint heroId,
    address[] calldata items,
    uint[] calldata itemIds,
    uint8[] calldata itemSlots
  ) external {
    EquipLocalContext memory ctx;

    // only HeroController or EOA
    if (address(ControllerContextLib.heroController(cc)) != senderInfo.msgSender) {
      ItemLib.onlyEOA(senderInfo.isEoa);
    }

    if (items.length != itemIds.length || items.length != itemSlots.length) revert IAppErrors.LengthsMismatch();

    (ctx.payToken,) = ControllerContextLib.heroController(cc).payTokenInfo(hero);
    ctx.heroTokenId = heroId;
    ctx.heroToken = hero;
    ctx.sandboxMode = _getSandboxMode(cc, hero, heroId);

    if (address(ControllerContextLib.heroController(cc)) != senderInfo.msgSender) {
      ItemLib.onlyOwner(hero, heroId, senderInfo.msgSender);
    }
    _checkHeroAndController(cc, hero, heroId);
    ItemLib.onlyAliveHero(cc, hero, heroId);
    if (ControllerContextLib.dungeonFactory(cc).currentDungeon(hero, heroId) != 0) revert IAppErrors.EquipForbiddenInDungeon();

    if (ctx.payToken == address(0)) revert IAppErrors.ErrorEquipForbidden();

    for (ctx.i = 0; ctx.i < items.length; ++ctx.i) {
      // SCB-1021: some slots require uniqueness of item tokens
      ctx.slot = IStatController.ItemSlots(itemSlots[ctx.i]);
      if (ctx.slot == IStatController.ItemSlots.RIGHT_RING) {
        _checkItemIsUnique(ctx, cc, items, ctx.i, [IStatController.ItemSlots.LEFT_RING, IStatController.ItemSlots.UNKNOWN]);
      } else if (ctx.slot == IStatController.ItemSlots.LEFT_RING) {
        _checkItemIsUnique(ctx, cc, items, ctx.i, [IStatController.ItemSlots.RIGHT_RING, IStatController.ItemSlots.UNKNOWN]);
      } else if (ctx.slot == IStatController.ItemSlots.SKILL_1) {
        _checkItemIsUnique(ctx, cc, items, ctx.i, [IStatController.ItemSlots.SKILL_2, IStatController.ItemSlots.SKILL_3]);
      } else if (ctx.slot == IStatController.ItemSlots.SKILL_2) {
        _checkItemIsUnique(ctx, cc, items, ctx.i, [IStatController.ItemSlots.SKILL_1, IStatController.ItemSlots.SKILL_3]);
      } else if (ctx.slot == IStatController.ItemSlots.SKILL_3) {
        _checkItemIsUnique(ctx, cc, items, ctx.i, [IStatController.ItemSlots.SKILL_1, IStatController.ItemSlots.SKILL_2]);
      }

      ctx.itemData = ItemLib.ItemWithId({item: items[ctx.i], itemId: itemIds[ctx.i]});
      if (address(ControllerContextLib.heroController(cc)) == senderInfo.msgSender) {
        // Hero is created in tiers 2 or 3, tier items are minted and equipped (sandbox mode is not allowed for tiers 2 and 3)
        _equip(_S(), ctx, cc, IERC721(items[ctx.i]).ownerOf(itemIds[ctx.i]), ctx.itemData, itemSlots[ctx.i], false);
      } else {
        ctx.inSandbox = ItemLib.onlyItemOwner(cc, ctx.itemData, hero, heroId, senderInfo.msgSender, ctx.sandboxMode, false);
        _equip(_S(), ctx, cc, senderInfo.msgSender, ctx.itemData, itemSlots[ctx.i], ctx.inSandbox);
      }
    }
  }

  function takeOffMany(
    ItemLib.SenderInfo memory senderInfo,
    ControllerContextLib.ControllerContext memory cc,
    address hero,
    uint heroId,
    address[] calldata items,
    uint[] calldata tokenIds,
    uint8[] calldata itemSlots
  ) external {
    ItemLib.onlyEOA(senderInfo.isEoa);

    TakeOffContext memory ctx = ItemStatsLib.TakeOffContext({
      msgSender: senderInfo.msgSender,
      hero: hero,
      heroId: heroId,
      inputTakeOff: InputTakeOff({
        destination: senderInfo.msgSender,
        broken: false,
        sandboxMode: _getSandboxMode(cc, hero, heroId)
      })
    });

    IItemController.MainState storage s = _S();
    uint len = items.length;
    if (len != tokenIds.length || len != itemSlots.length) revert IAppErrors.LengthsMismatch();

    for (uint i; i < len; ++i) {
      _takeOffWithChecks(s, ctx, cc, items[i], tokenIds[i], itemSlots[i]);
    }
  }

  /// @notice Destroy {consumed item} to repair durability of the {item}
  /// There is a chance ~ item fragility that the item won't be repaired.
  function repairDurability(
    ItemLib.SenderInfo memory senderInfo,
    ControllerContextLib.ControllerContext memory cc,
    address item,
    uint itemId,
    uint consumedItemId
  ) external {
    _repairDurability(senderInfo, cc, item, itemId, consumedItemId, CalcLib.pseudoRandom);
  }

  /// @notice Destroy {consumed item} to augment given {item}.
  /// There is a chance of 30% that the item will be destroyed instead of augmentation.
  function augment(
    ItemLib.SenderInfo memory senderInfo,
    ControllerContextLib.ControllerContext memory cc,
    address item,
    uint itemId,
    uint consumedItemId
  ) external {
    // restrictions are checked inside {_prepareToAugment}
    IItemController.MainState storage s = _S();
    (
      IItemController.ItemMeta memory meta,
      IItemController.ItemInfo memory _itemInfo,
      bool[2] memory inSandbox
    ) = _prepareToAugment(cc, senderInfo, item, itemId, consumedItemId);

    ItemLib.onlyNotConsumable(meta, item);
    if (_itemInfo.augmentationLevel >= MAX_AUGMENTATION_LEVEL) revert IAppErrors.TooHighAgLevel(_itemInfo.augmentationLevel);

    ItemLib._destroy(cc, item, consumedItemId, inSandbox[1]);

    address augToken = _sendFee(s, cc.controller, item, senderInfo.msgSender, 1);
    // we check augToken for 0 AFTER sendFee to avoid second reading of augmentInfo
    if (augToken == address(0)) revert IAppErrors.ZeroAugmentation();

    if (IOracle(ControllerContextLib.oracle(cc)).getRandomNumber(1e18, 0) < AUGMENT_CHANCE) {
      IItemController.AugmentInfo memory _augmentInfo;
      bytes32 packedItemId = item.packNftId(itemId);

      // augment base
      (_augmentInfo.attributesValues, _augmentInfo.attributesIds) = _augmentAttributes(s._itemAttributes[packedItemId], true);
      s._itemAttributes[packedItemId] = _augmentInfo.attributesValues.toBytes32ArrayWithIds(_augmentInfo.attributesIds);

      // additionally
      if (meta.itemMetaType == uint8(IItemController.ItemMetaType.ATTACK)) {
        _augmentInfo.attackInfo = ItemLib.unpackItemAttackInfo(s._itemAttackInfo[packedItemId]);
        _augmentInfo.attackInfo.min = _augmentAttribute(_augmentInfo.attackInfo.min);
        _augmentInfo.attackInfo.max = _augmentAttribute(_augmentInfo.attackInfo.max);
        s._itemAttackInfo[packedItemId] = ItemLib.packItemAttackInfo(_augmentInfo.attackInfo);
      } else if (meta.itemMetaType == uint8(IItemController.ItemMetaType.BUFF)) {
        // caster
        (_augmentInfo.casterValues, _augmentInfo.casterIds) = _augmentAttributes(s._itemCasterAttributes[packedItemId], true);
        s._itemCasterAttributes[packedItemId] = _augmentInfo.casterValues.toBytes32ArrayWithIds(_augmentInfo.casterIds);

        // target
        (_augmentInfo.targetValues, _augmentInfo.targetIds) = _augmentAttributes(s._itemTargetAttributes[packedItemId], false);
        s._itemTargetAttributes[packedItemId] = _augmentInfo.targetValues.toBytes32ArrayWithIds(_augmentInfo.targetIds);
      }

      // increase aug level
      _itemInfo.augmentationLevel = _itemInfo.augmentationLevel + 1;
      s.itemInfo[packedItemId] = ItemLib.packItemInfo(_itemInfo);

      emit IApplicationEvents.Augmented(item, itemId, consumedItemId, _itemInfo.augmentationLevel, _augmentInfo);
    } else {
      ItemLib._destroy(cc, item, itemId, inSandbox[0]);
      emit IApplicationEvents.NotAugmented(item, itemId, consumedItemId, _itemInfo.augmentationLevel);
    }
  }

  /// @notice Use consumable
  function use(
    ItemLib.SenderInfo memory senderInfo,
    ControllerContextLib.ControllerContext memory cc,
    ItemLib.ItemWithId memory itemData,
    address hero,
    uint heroId
  ) external returns (uint actionMask) {
    ItemLib.onlyEOA(senderInfo.isEoa);
    bool inSandbox = ItemLib.onlyItemOwner(cc, itemData, hero, heroId, senderInfo.msgSender, _getSandboxMode(cc, hero, heroId), true);

    IItemController.MainState storage s = _S();

    (address payToken,) = ControllerContextLib.heroController(cc).payTokenInfo(hero);
    if (payToken == address(0)) revert IAppErrors.UseForbiddenZeroPayToken();

    ItemLib.onlyOwner(hero, heroId, senderInfo.msgSender);
    _checkHeroAndController(cc, hero, heroId);

    {
      IItemController.ItemMeta memory meta = ItemLib.unpackedItemMeta(s.itemMeta[itemData.item]);
      if (uint8(meta.itemType) != 0) revert IAppErrors.NotConsumable(itemData.item);
      ItemLib.checkRequirements(cc, hero, heroId, meta.requirements);

      IStatController.ChangeableStats memory change = StatLib.unpackChangeableStats(s.itemConsumableStats[itemData.item]);
      // allow to use multiple times items with experience/lc
      if(change.experience == 0 && change.lifeChances == 0) {
        ControllerContextLib.statController(cc).registerConsumableUsage(hero, heroId, itemData.item);
      }
      ControllerContextLib.statController(cc).changeCurrentStats(hero, heroId, change, true);
    }

    {
      bytes32[] memory itemConsumableAttributes = s._itemConsumableAttributes[itemData.item];
      if (itemConsumableAttributes.length != 0) {
        int32[] memory attributes = StatLib.bytesToFullAttributesArray(itemConsumableAttributes);
        ControllerContextLib.statController(cc).changeBonusAttributes(IStatController.ChangeAttributesInfo({
          heroToken: hero,
          heroTokenId: heroId,
          changeAttributes: attributes,
          add: true,
          temporally: true
        }));
      }
    }

    actionMask = s._consumableActionMask[itemData.item];

    ItemLib._destroy(cc, itemData.item, itemData.itemId, inSandbox);
    emit IApplicationEvents.Used(itemData.item, itemData.itemId, hero, heroId);
  }

  function combineItems(
    ItemLib.SenderInfo memory senderInfo,
    ControllerContextLib.ControllerContext memory cc,
    uint configId,
    address[] memory items,
    uint[][] memory itemIds
  ) internal returns (uint itemId) {
    ItemLib.onlyEOA(senderInfo.isEoa);

    address helper = ItemStatsLib.itemControllerHelper();
    if (helper == address(0)) revert IAppErrors.NotInitialized();

    // validate that {items} and {itemIds} fit to the selected config
    address itemToMint = IItemControllerHelper(helper).prepareToCombine(senderInfo.msgSender, configId, items, itemIds);

    // destroy provided items
    uint lenItems = items.length;
    for (uint i; i < lenItems; ++i) {
      uint[] memory ids = itemIds[i];
      uint len = ids.length;
      for (uint j; j < len; ++j) {
        ItemLib._destroy(cc, items[i], ids[j], false);
      }
    }

    // mint a new item in exchange of destroyed items
    itemId = ItemLib.mintNewItem(_S(), cc.controller, address(this), itemToMint, senderInfo.msgSender);

    emit IApplicationEvents.CombineItems(senderInfo.msgSender, configId, items, itemIds, itemToMint, itemId);
  }

  //endregion ------------------------ Eoa actions

  //region ------------------------ Internal logic - equip and take off

  /// @notice Ensure that 1) {items} has no duplicates of items[index] 2) items[index] is not equipped at {slotsToCheck}
  function _checkItemIsUnique(
    EquipLocalContext memory ctx,
    ControllerContextLib.ControllerContext memory cc,
    address[] memory items,
    uint index,
    IStatController.ItemSlots[2] memory slotsToCheck
  ) internal view {
    if (!ctx.equippedSlotsLoaded) {
      ctx.equippedSlots = ControllerContextLib.statController(cc).heroItemSlots(ctx.heroToken, ctx.heroTokenId);
      ctx.equippedSlotsLoaded = true;
    }

    // there are no duplicates of the item in {items}
    // we don't check slots - assume that if item is being equipped it's equipped to the slot under consideration
    uint len = items.length;
    for (uint i; i < len; ++i) {
      if (i == index) continue;
      if (items[i] == items[index]) revert IAppErrors.DoubleItemUsageForbidden(index, items);
    }

    // ensure that the item is not yet equipped
    len = ctx.equippedSlots.length;
    for (uint i; i < len; ++i) {
      if (uint8(slotsToCheck[0]) == ctx.equippedSlots[i] || uint8(slotsToCheck[1]) == ctx.equippedSlots[i]) {
        (address item,) = PackingLib.unpackNftId(ControllerContextLib.statController(cc).heroItemSlot(ctx.heroToken, uint64(ctx.heroTokenId), ctx.equippedSlots[i]));
        if (item == items[index]) revert IAppErrors.ItemAlreadyUsedInSlot(item, uint8(ctx.equippedSlots[i]));
      }
    }
  }

  /// @notice Equip the item, add bonus attributes, transfer the item from the sender to the hero token
  /// @param inSandbox Take the item from the sandbox
  function _equip(
    IItemController.MainState storage s,
    EquipLocalContext memory ctx,
    ControllerContextLib.ControllerContext memory cc,
    address msgSender,
    ItemLib.ItemWithId memory itemData,
    uint8 itemSlot,
    bool inSandbox
  ) internal {
    IItemController.ItemMeta memory meta = ItemLib.unpackedItemMeta(s.itemMeta[itemData.item]);
    IItemController.ItemInfo memory _itemInfo = ItemLib.unpackedItemInfo(s.itemInfo[itemData.item.packNftId(itemData.itemId)]);

    if (meta.itemMetaType == 0) revert IAppErrors.UnknownItem(itemData.item);
    ItemLib.onlyNotEquippedItem(_S(), itemData.item, itemData.itemId);
    ItemLib.onlyNotConsumable(meta, itemData.item);

    if (meta.baseDurability != 0 && _itemInfo.durability == 0) revert IAppErrors.Broken(itemData.item);
    ItemLib.checkRequirements(cc, ctx.heroToken, ctx.heroTokenId, meta.requirements);

    ControllerContextLib.statController(cc).changeHeroItemSlot(
      ctx.heroToken,
      uint64(ctx.heroTokenId),
      uint(meta.itemType),
      itemSlot,
      itemData.item,
      itemData.itemId,
      true
    );

    bytes32[] memory attributes = s._itemAttributes[itemData.item.packNftId(itemData.itemId)];
    if (attributes.length != 0) {
      ControllerContextLib.statController(cc).changeBonusAttributes(IStatController.ChangeAttributesInfo({
        heroToken: ctx.heroToken,
        heroTokenId: ctx.heroTokenId,
        changeAttributes: StatLib.bytesToFullAttributesArray(attributes),
        add: true,
        temporally: false
      }));

      // some items can reduce hero life to zero, prevent this
      if (ControllerContextLib.statController(cc).heroStats(ctx.heroToken, ctx.heroTokenId).life == 0) revert IAppErrors.ZeroLife();
    }

    // transfer item to hero
    if (inSandbox) {
      ControllerContextLib.itemBoxController(cc).transferToHero(ctx.heroToken, ctx.heroTokenId, itemData.item, itemData.itemId);
    } else {
      IItem(itemData.item).controlledTransfer(msgSender, ctx.heroToken, itemData.itemId);
    }
    // need to equip after transfer for properly checks
    s.equippedOn[itemData.item.packNftId(itemData.itemId)] = ctx.heroToken.packNftId(ctx.heroTokenId);

    emit IApplicationEvents.Equipped(itemData.item, itemData.itemId, ctx.heroToken, ctx.heroTokenId, itemSlot);
  }

  /// @notice Check requirements for the hero and for the controller state before equip/take off/use items
  function _checkHeroAndController(ControllerContextLib.ControllerContext memory cc, address heroToken, uint heroTokenId) internal view {
    if (IReinforcementController(ControllerContextLib.reinforcementController(cc)).isStaked(heroToken, heroTokenId)) revert IAppErrors.Staked(heroToken, heroTokenId);
    if (cc.controller.onPause()) revert IAppErrors.ErrorPaused();
    if (ControllerContextLib.heroController(cc).heroClass(heroToken) == 0) revert IAppErrors.ErrorHeroIsNotRegistered(heroToken);
    IPvpController pc = ControllerContextLib.pvpController(cc);
    if (address(pc) != address(0) && pc.isHeroStakedCurrently(heroToken, heroTokenId)) revert IAppErrors.PvpStaked();
  }

  function _takeOffWithChecks(
    IItemController.MainState storage s,
    TakeOffContext memory ctx,
    ControllerContextLib.ControllerContext memory cc,
    address item,
    uint itemId,
    uint8 itemSlot
  ) internal {
    ItemLib.onlyOwner(ctx.hero, ctx.heroId, ctx.msgSender);
    _checkHeroAndController(cc, ctx.hero, ctx.heroId);
    if (ControllerContextLib.dungeonFactory(cc).currentDungeon(ctx.hero, ctx.heroId) != 0) revert IAppErrors.TakeOffForbiddenInDungeon();

    if (s.equippedOn[item.packNftId(itemId)] != ctx.hero.packNftId(ctx.heroId)) revert IAppErrors.NotEquipped(item);

    _takeOff(s, cc, item, itemId, ctx.hero, ctx.heroId, itemSlot, ctx.inputTakeOff);
  }

  /// @notice Take off the item, remove bonus attributes, transfer the item from the hero token to {destination}
  function _takeOff(
    IItemController.MainState storage s,
    ControllerContextLib.ControllerContext memory cc,
    address item,
    uint itemId,
    address hero,
    uint heroId,
    uint8 itemSlot,
    InputTakeOff memory inputTakeOff
  ) internal {
    bytes32 packedItemId = item.packNftId(itemId);
    IItemController.ItemMeta memory meta = ItemLib.unpackedItemMeta(s.itemMeta[item]);
    IItemController.ItemInfo memory _itemInfo = ItemLib.unpackedItemInfo(s.itemInfo[packedItemId]);

    ItemLib.onlyNotConsumable(meta, item);

    ControllerContextLib.statController(cc).changeHeroItemSlot(hero, uint64(heroId), uint(meta.itemType), itemSlot, item, itemId, false);

    if (inputTakeOff.broken) {
      _itemInfo.durability = 0;
      s.itemInfo[packedItemId] = ItemLib.packItemInfo(_itemInfo);
    }

    bytes32[] memory attributes = s._itemAttributes[packedItemId];
    if (attributes.length != 0) {
      ControllerContextLib.statController(cc).changeBonusAttributes(IStatController.ChangeAttributesInfo({
        heroToken: hero,
        heroTokenId: heroId,
        changeAttributes: StatLib.bytesToFullAttributesArray(attributes),
        add: false,
        temporally: false
      }));
    }

    // need to take off before transfer for properly checks
    s.equippedOn[packedItemId] = bytes32(0);
    if (inputTakeOff.sandboxMode == IHeroController.SandboxMode.SANDBOX_MODE_1) {
      IItem(item).controlledTransfer(hero, address(ControllerContextLib.itemBoxController(cc)), itemId);
    } else {
      IItem(item).controlledTransfer(hero, inputTakeOff.destination, itemId);
    }

    emit IApplicationEvents.TakenOff(item, itemId, hero, heroId, itemSlot, inputTakeOff.destination);
  }


  //endregion ------------------------ Internal logic - equip and take off

  //region ------------------------ Internal logic - augment, repair

  /// @notice Initialization for augment() and repairDurability()
  /// Get {meta} and {info}, check some restrictions
  /// @return meta Metadata of the item
  /// @return info Unpacked item info
  /// @return inSandbox [item is in the sandbox, consumable item is in the sandbox]
  function _prepareToAugment(
    ControllerContextLib.ControllerContext memory cc,
    ItemLib.SenderInfo memory senderInfo,
    address item,
    uint itemId,
    uint consumedItemId
  ) internal view returns (
    IItemController.ItemMeta memory meta,
    IItemController.ItemInfo memory info,
    bool[2] memory inSandbox
  ) {
    ItemLib.checkPauseEoa(senderInfo, cc.controller);

    ItemLib.onlyNotEquippedItem(_S(), item, itemId);
    ItemLib.onlyNotEquippedItem(_S(), item, consumedItemId);

    inSandbox = ItemLib._checkOwnerItems(cc, ItemLib.ItemWithId(item, itemId), ItemLib.ItemWithId(item, consumedItemId), senderInfo.msgSender);

    if (itemId == consumedItemId) revert IAppErrors.SameIdsNotAllowed();
    meta = ItemLib.unpackedItemMeta(_S().itemMeta[item]);
    info = ItemLib.unpackedItemInfo(_S().itemInfo[item.packNftId(itemId)]);

    return (meta, info, inSandbox);
  }

  /// @notice Destroy {consumed item} to repair durability of the {item}
  /// There is a chance ~ item fragility that the item won't be repaired.
  /// @param random_ Pass _pseudoRandom here, param is required to simplify unit testing
  function _repairDurability(
    ItemLib.SenderInfo memory senderInfo,
    ControllerContextLib.ControllerContext memory cc,
    address item,
    uint itemId,
    uint consumedItemId,
    function (uint) internal view returns (uint) random_
  ) internal {
    // restrictions are checked inside {_prepareToAugment}
    IItemController.MainState storage s = _S();
    (
      IItemController.ItemMeta memory meta,
      IItemController.ItemInfo memory _itemInfo,
      bool[2] memory inSandbox
    ) = _prepareToAugment(cc, senderInfo, item, itemId, consumedItemId);

    if (meta.baseDurability == 0) revert IAppErrors.ZeroDurability();

    ItemLib._destroy(cc, item, consumedItemId, inSandbox[1]);
    _sendFee(s, cc.controller, item, senderInfo.msgSender, block.chainid == uint(146) ? 10 : 1);

    // SIP-003: There is a chance of unsuccessful repair ~ to the item fragility
    uint fragility = itemFragility(item, itemId);
    bool success = fragility == 0 || random_(MAX_FRAGILITY - 1) > fragility;
    // Each successful repair has a 10% chance of increasing the item's fragility by 1%.
    bool incFragility = random_(100) < FRAGILITY_SUCCESSFUL_REPAIR_CHANCE;

    _itemInfo.durability = success
      ? meta.baseDurability // the item is repaired successfully
      : _itemInfo.durability;

    // try to hide gas difference between successful and failed cases
    _addItemFragility(item, itemId, success && incFragility ? FRAGILITY_SUCCESSFUL_REPAIR_PORTION : 0); // item fragility is increased

    s.itemInfo[item.packNftId(itemId)] = ItemLib.packItemInfo(_itemInfo);

    if (success) {
      emit IApplicationEvents.ItemRepaired(item, itemId, consumedItemId, meta.baseDurability);
    } else {
      emit IApplicationEvents.FailedToRepairItem(item, itemId, consumedItemId, _itemInfo.durability);
    }
  }

  /// @notice Modify either positive or negative values
  /// @param ignoreNegative True - leave unchanged all negative values, False - don't change all positive values
  function _augmentAttributes(bytes32[] memory packedAttr, bool ignoreNegative) internal pure returns (
    int32[] memory values,
    uint8[] memory ids
  ) {
    (values, ids) = packedAttr.toInt32ArrayWithIds();
    for (uint i; i < values.length; ++i) {
      // do not increase destroy item attribute
      if(uint(ids[i]) == uint(IStatController.ATTRIBUTES.DESTROY_ITEMS)) {
        continue;
      }
      if ((ignoreNegative && values[i] > 0) || (!ignoreNegative && values[i] < 0)) {
        values[i] = _augmentAttribute(values[i]);
      }
    }
  }

  /// @notice Increase/decrease positive/negative value on ceil(value/20) but at least on 1
  function _augmentAttribute(int32 value) internal pure returns (int32) {
    if (value == 0) {
      return 0;
    }
    // bonus must be not lower than 1
    if (value > 0) {
      return value + int32(int(Math.max(Math.ceilDiv(value.toUint(), AUGMENT_FACTOR), 1)));
    } else {
      return value - int32(int(Math.max(Math.ceilDiv((- value).toUint(), AUGMENT_FACTOR), 1)));
    }
  }
  //endregion ------------------------ Internal logic - augment, repair

  //region ------------------------ Internal logic - durability, destroy, fee, fragility

  /// @notice newDurability Calculate new durability for the {item}, update {itemInfo}
  function _reduceDurabilityForItem(
    IItemController.MainState storage s,
    address item,
    uint itemId,
    uint biome
  ) internal returns (uint16 newDurability) {
    IItemController.ItemMeta memory meta = ItemLib.unpackedItemMeta(s.itemMeta[item]);
    IItemController.ItemInfo memory _itemInfo = ItemLib.unpackedItemInfo(s.itemInfo[item.packNftId(itemId)]);

    newDurability = uint16(_calcReduceDurability(biome, _itemInfo.durability, meta.itemLevel, meta.itemType));

    _itemInfo.durability = newDurability;
    _itemInfo.durability = newDurability;
    s.itemInfo[item.packNftId(itemId)] = ItemLib.packItemInfo(_itemInfo);

    emit IApplicationEvents.ReduceDurability(item, itemId, newDurability);
  }

  /// @return New (reduced) value for the current durability
  function _calcReduceDurability(
    uint biome,
    uint currentDurability,
    uint8 itemLevel,
    IItemController.ItemType itemType
  ) internal pure returns (uint) {
    uint value = DURABILITY_REDUCTION;

    if (itemType != IItemController.ItemType.SKILL) {
      uint itemBiomeLevel = uint(itemLevel) / StatLib.BIOME_LEVEL_STEP + 1;
      if (itemBiomeLevel < biome) {
        value = DURABILITY_REDUCTION * ((biome - itemBiomeLevel + 1) ** 2 / 2);
      }
    }

    return currentDurability > value
      ? currentDurability - value
      : 0;
  }

  /// @return augToken Return augToken to avoid repeat reading of augmentInfo inside augment()
  function _sendFee(
    IItemController.MainState storage s,
    IController controller,
    address item,
    address msgSender,
    uint divider
  ) internal returns (address augToken) {
    (address token, uint amount) = s.augmentInfo[item].unpackAddressWithAmount();
    if (token != address(0)) {
      controller.process(token, amount / divider, msgSender);
    }
    return token;
  }

  function _addItemFragility(address item, uint itemId, uint portion) internal {
    uint fragility = _S().itemFragility[item.packNftId(itemId)];
    _S().itemFragility[item.packNftId(itemId)] = fragility + portion > MAX_FRAGILITY
      ? MAX_FRAGILITY
      : fragility + portion;
  }

  function _getSandboxMode(ControllerContextLib.ControllerContext memory cc, address hero, uint heroId) internal view returns (
    IHeroController.SandboxMode sandboxMode
  ) {
    return IHeroController.SandboxMode(ControllerContextLib.heroController(cc).sandboxMode(hero, heroId));
  }
  //endregion ------------------------ Internal logic - durability, destroy, fee, fragility
}
