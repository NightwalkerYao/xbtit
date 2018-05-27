<div class="card-panel transparent">
  <h4 class="no-margin-top"><i class="material-icons left cyan-text" style="font-size: 27pt">vpn_lock</i> Administartion Panel > Manage Blocks</h4>
  <div class="row">
    <form name="blocks" action="<tag:frm_action />" method="post">
      <if:edit_block>
        <div class="col input-field">
          <tag:combo_blocks_name />
          <label><tag:language.BLOCK_NAME /></label>
        </div>
        <div class="col input-field">
          <tag:combo_position />
          <label><tag:language.BLOCK_POSITION /></label>
        </div>
        <div class="col input-field">
          <input type="text" name="block_title" value="<tag:block_title />" maxlength="40" id="blk0" />
          <label for="blk0"><tag:language.BLOCK_TITLE /></label>
        </div>
        <div class="input-field col">
          <label for="blk1">
            <input type="checkbox" name="use_cache" <tag:block_cache /> id="blk1" />
            <span><tag:language.BLOCK_USE_CACHE /></span>
          </label>
        </div>
        <div class="input-field col">
          <tag:combo_min_view />
          <label><tag:language.BLOCK_MINCLASSVIEW /></label>
        </div>
        <div class="input-field col">
          <tag:combo_max_view />
          <label><tag:language.BLOCK_MAXCLASSVIEW /></label>
        </div>
      <else:edit_block>
        <div class="col s12 l12 m12 center">
          <a href="<tag:add_new_block />" class="btn"><i class="material-icons left">add</i> <tag:language.BLOCK_ADD_NEW /></a>
        </div>
        <if:top_blocks>
          <loop:tops>
            <div class="col l12 s12 italic bold orange-text"><tag:tops[].title /></div>
            <div class="col input-field l12 s12">
              <p>
              <label for="<tag:tops[].idx />">
                <tag:tops[].check />
                <span><tag:language.ENABLED /></span>
              </label>
              </p>
            </div>
            <div class="col input-field">
              <tag:tops[].combo />
              <label>Order</label>
            </div>
            <div class="input-field col">
              <tag:tops[].pos />
              <label>position</label>
            </div>
            <div class="input-field col">
              <tag:tops[].combo_min_view />
              <label>Min.</label>
            </div>
            <div class="col input-field">
              <tag:tops[].combo_max_view />
              <label>Max.</label>
            </div>
          </loop:tops>
        </if:top_blocks>
        <if:dropdown_blocks>
          <loop:dropdown>
            <div class="col l12 s12 italic bold orange-text"><tag:dropdown[].title /></div>
            <div class="col l12 s12 input-field">
              <p>
                <label for="<tag:dropdown[].chbox />">
                  <tag:dropdown[].check />
                  <span><tag:language.ENABLED /></span>
                </label>
              </p>
            </div>
            <div class="col input-field">
              <tag:dropdown[].combo />
              <label>Order</label>
            </div>
            <div class="col input-field">
              <tag:dropdown[].pos />
              <label>position</label>
            </div>
            <div class="col input-field">
              <tag:dropdown[].combo_min_view />
              <label>Min.</label>
            </div>
            <div class="col input-field">
              <tag:dropdown[].combo_max_view />
              <label>Max.</label>
            </div>
          </loop:dropdown>
        </if:dropdown_blocks>
        <if:extra_blocks>
          <loop:extras>
            <div class="col l12 s12 italic bold orange-text"><tag:extras[].title /></div>
            <div class="col input-field l12 s12">
              <p>
                <label for="<tag:extras[].chbox />">
                  <tag:extras[].check />
                  <span><tag:language.ENABLED /></span>
                </label>
              </p>
            </div>
            <div class="col input-field">
              <tag:extras[].combo />
              <label>Order</label>
            </div>
            <div class="col input-field">
              <tag:extras[].pos />
              <label>position</label>
            </div>
            <div class="col input-field">
              <tag:extras[].combo_min_view />
              <label>Min.</label>
            </div>
            <div class="col input-field">
              <tag:extras[].combo_max_view />
              <label>Max.</label>
            </div>
          </loop:extras>
        </if:extra_blocks>
        <if:left_blocks>
          <loop:lefts>
            <div class="col l12 s12 italic bold orange-text"><tag:lefts[].title /></div>
            <div class="col s12 l12 input-field">
              <p>
                <label for="<tag:lefts[].chbox />">
                  <tag:lefts[].check />
                  <span><tag:language.ENABLED /></span>
                </label>
              </p>
            </div>
            <div class="col input-field">
              <tag:lefts[].combo />
              <label>Order</label>
            </div>
            <div class="col input-field">
              <tag:lefts[].pos />
              <label>position</label>
            </div>
            <div class="col input-field">
              <tag:lefts[].combo_min_view />
              <label>Min.</label>
            </div>
            <div class="col input-field">
              <tag:lefts[].combo_max_view />
              <label>Max.</label>
            </div>
          </loop:lefts>
        </if:left_blocks>
        <if:center_blocks>
          <loop:centers>
            <div class="col l12 s12 italic bold orange-text"><tag:centers[].title /></div>
            <div class="col input-field s12 l12">
              <p>
                <label for="<tag:centers[].chbox />">
                  <tag:centers[].check />
                  <span><tag:language.ENABLED /></span>
                </label>
              </p>
            </div>
            <div class="col input-field">
              <tag:centers[].combo />
              <label>Order</label>
            </div>
            <div class="col input-field">
              <tag:centers[].pos />
              <label>position</label>
            </div>
            <div class="col input-field">
              <tag:centers[].combo_min_view />
              <label>Min.</label>
            </div>
            <div class="col input-field">
              <tag:centers[].combo_max_view />
              <label>Max.</label>
            </div>
          </loop:centers>
        </if:center_blocks>
        <if:right_blocks>
          <loop:rights>
            <div class="col l12 s12 italic bold orange-text"><tag:rights[].title /></div>
            <div class="col s12 l12 input-field">
              <p>
                <label for="<tag:rights[].chbox />">
                  <tag:rights[].check />
                  <span><tag:language.ENABLED /></span>
                </label>
              </p>
            </div>
            <div class="col input-field">
              <tag:rights[].combo />
              <label>Order</label>
            </div>
            <div class="col input-field">
              <tag:rights[].pos />
              <label>position</label>
            </div>
            <div class="col input-field">
              <tag:rights[].combo_min_view />
              <label>Min.</label>
            </div>
            <div class="col input-field">
              <tag:rights[].combo_max_view />
              <label>Max.</label>
            </div>
          </loop:rights>
        </if:right_blocks>
        <if:bottom_blocks>
          <loop:bottoms>
            <div class="col l12 s12 italic bold orange-text"><tag:bottoms[].title /></div>
            <div class="col input-field s12 l12">
              <p>
                <label for="<tag:bottoms[].chbox />">
                  <tag:bottoms[].check />
                  <span><tag:language.ENABLED /></span>
                </label>
              </p>
            </div>
            <div class="col input-field">
              <tag:bottoms[].combo />
              <label>Order</label>
            </div>
            <div class="col input-field">
              <tag:bottoms[].pos />
              <label>position</label>
            </div>
            <div class="col input-field">
              <tag:bottoms[].combo_min_view />
              <label>Min.</label>
            </div>
            <div class="col input-field">
              <tag:bottoms[].combo_max_view />
              <label>Max.</label>
            </div>
          </loop:bottoms>
        </if:bottom_blocks>
      </if:edit_block>
      <div class="col l12 s12 m12 center">
        <input type="submit" name="confirm" class="btn" value="<tag:language.FRM_CONFIRM />" />
        &nbsp;&nbsp;
        <input type="submit" name="confirm" class="btn" value="<tag:language.FRM_CANCEL />" />
      </div>
    </div>
</div>
