<input type="hidden" name="id" value="${kk.id}" required />

<div class="txt_field">
    <input type="text" name="username" value="${kk.username}" required />
    <span></span>
    <label>Username</label>
</div>
<div class="txt_field">
    <input type="text" name="email" value="${kk.email}" required />
    <span></span>
    <label>Email</label>
</div>
<div class="txt_field">
    <input type="text" name="location" value="${kk.location}" required />
    <span></span>
    <label>Location</label>
</div>

<div class="txt_field">
    <input type="file" name="profileupload" required />
    <span></span>
    <label>Upload Profile Image</label>
</div>

<div class="txt_field">
    <input type="text" name="about" value="${kk.about}" required />
    <span></span>
    <label>About You</label>
</div>

<div class="txt_field">
    <input type="password" name="password" value="${kk.password}" required />
    <span></span>
    <label>Password</label>
</div>
<div class="txt_field">
    <input type="password" name="cpassword" value="${kk.cpassword}" required />
    <span></span>
    <label>Confirm Password</label>
</div>

<input type="submit" value="Update Details" />
